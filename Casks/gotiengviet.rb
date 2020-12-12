cask "gotiengviet" do
  version "2.2,30"
  sha256 :no_check

  url "https://www.trankynam.com/gotv/downloads/GoTiengViet.dmg"
  appcast "https://www.trankynam.com/gotv/macos/GoTiengVietMacOSX-Appcast.xml"
  name "GoTiengViet"
  homepage "https://www.trankynam.com/gotv/"

  app "GoTiengViet.app"
end
