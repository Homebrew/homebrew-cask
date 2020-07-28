cask "airmedia" do
  version "3.2.1"
  sha256 "ed764c62cddba87135b30b4c4ac6dfd7de6e97524c8592a817f5121618f582a9"

  url "https://www.crestron.com/Crestron/media/Crestron/WidenResources/Web%20Miscellaneous/airmedia_osx_#{version.dots_to_underscores}_guest.zip"
  appcast "https://www.crestron.com/en-US/Products/Featured-Solutions/Airmedia"
  name "Crestron AirMedia"
  homepage "https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations"

  container nested: "airmedia_osx_#{version.dots_to_underscores}_guest/airmedia_osx_#{version}_guest.dmg"

  app "Crestron AirMedia.app"
end
