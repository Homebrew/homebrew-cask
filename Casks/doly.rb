cask "doly" do
  version "2.22.0"
  sha256 "b2141a1ae3443d20472a275c938ad82d6e9b61ef7916a1112e6e08bdf770f860"

  url "http://doly.jp/download/doly-mac_#{version}.dmg"
  appcast "http://doly.jp/update_mac.html"
  name "Doly Ebook Reader"
  homepage "http://doly.jp/"

  app "Doly.app"
end
