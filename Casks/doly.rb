cask "doly" do
  version "2.23.0"
  sha256 "f07b10ac9e19e9a169b24ecad0d02e4b143fe758684ed58bc8ec1ae15e695411"

  url "http://doly.jp/download/doly-mac_#{version}.dmg"
  appcast "http://doly.jp/update_mac.html"
  name "Doly Ebook Reader"
  homepage "http://doly.jp/"

  app "Doly.app"
end
