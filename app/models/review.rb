class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, presence: true
  validates :rating, inclusion: { in: %w(1 2 3 4 5 ),
    message: "%{value} is not a valid rating" }, allow_nil: false
  validates :content, presence: true
end
