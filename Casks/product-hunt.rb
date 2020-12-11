cask "product-hunt" do
  version "1.0.3"
  sha256 :no_check

  url "https://s3.producthunt.com/mac/ProductHunt.dmg"
  appcast "https://producthunt.s3.amazonaws.com/mac/producthuntcast.xml"
  name "Product Hunt"
  homepage "https://www.producthunt.com/apps/mac"

  app "Product Hunt.app"
end
