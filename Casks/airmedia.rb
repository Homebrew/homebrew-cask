cask "airmedia" do
  version "4.0.19"
  sha256 "1cdc431fccf693a5bcccfcf6fa2218b73ad2c08517852dad70805af3b9ea080d"

  url "https://www.crestron.com/Crestron/media/Crestron/WidenResources/Web%20Miscellaneous/airmedia_osx_#{version.dots_to_underscores}_guest.zip"
  appcast "https://www.crestron.com/en-US/Products/Featured-Solutions/Airmedia"
  name "Crestron AirMedia"
  homepage "https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations"

  container nested: "airmedia_osx_#{version}_guest.dmg"

  app "Crestron AirMedia.app"
end
