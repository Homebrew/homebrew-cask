cask "doly" do
  version "2.19.0"
  sha256 "379cb026668d7952a060ecf6f8abd6810bd19c3d8ad7f440bebe153c29d2d2cf"

  url "http://doly.jp/download/doly-mac_#{version}.dmg"
  appcast "http://doly.jp/"
  name "Doly Ebook Reader"
  homepage "http://doly.jp/"

  app "Doly.app"
end
