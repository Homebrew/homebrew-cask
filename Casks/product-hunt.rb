cask "product-hunt" do
  version "1.0.3"
  sha256 "5db2a659e79da1ef20435c561c94d22ebdcccd4e93a93e4f291ac4a17a8032a5"

  url "https://s3.producthunt.com/mac/ProductHunt.dmg"
  appcast "https://producthunt.s3.amazonaws.com/mac/producthuntcast.xml"
  name "Product Hunt"
  homepage "https://www.producthunt.com/apps/mac"

  app "Product Hunt.app"
end
