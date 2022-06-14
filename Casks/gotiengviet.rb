cask "gotiengviet" do
  version "2.3,31"
  sha256 :no_check

  url "https://www.trankynam.com/gotv/downloads/GoTiengViet.dmg"
  name "GoTiengViet"
  homepage "https://www.trankynam.com/gotv/"

  livecheck do
    url "https://www.trankynam.com/gotv/macos/GoTiengVietMacOSX-Appcast.xml"
    strategy :sparkle
  end

  app "GoTiengViet.app"
end
