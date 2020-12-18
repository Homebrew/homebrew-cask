cask "adventure" do
  version "2.1"
  sha256 :no_check

  url "https://www.lobotomo.com/products/downloads/Adventure.dmg"
  appcast "https://www.lobotomo.com/products/Adventure/appcast.xml"
  name "Adventure"
  homepage "https://www.lobotomo.com/products/Adventure/"

  app "Adventure.app"
end
