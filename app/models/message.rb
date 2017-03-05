class Message < ActiveRecord::Base
  # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :body , length: { minimum: 2, maximum: 30 } , presence: true
  # 内容は必須入力かつ0文字以上150文字以下
  validates :age , length: { minimum: 0, maximum: 150 } , numericality: true
end
