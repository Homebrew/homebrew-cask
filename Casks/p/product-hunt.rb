cask "product-hunt" do
  version "1.0.3"
  sha256 :no_check

  url "https://s3.producthunt.com/mac/ProductHunt.dmg"
  name "Product Hunt"
  homepage "https://www.producthunt.com/apps/mac"

  deprecate! date: "2024-04-16", because: :moved_to_mas

  app "Product Hunt.app"
end
