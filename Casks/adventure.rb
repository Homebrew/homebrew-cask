cask "adventure" do
  version "2.1"
  sha256 :no_check

  url "https://www.lobotomo.com/products/downloads/Adventure.dmg"
  name "Adventure"
  homepage "https://www.lobotomo.com/products/Adventure/"

  livecheck do
    url "https://www.lobotomo.com/products/Adventure/appcast.xml"
    strategy :sparkle
  end

  app "Adventure.app"
end
