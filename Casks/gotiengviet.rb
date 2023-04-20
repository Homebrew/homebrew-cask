cask "gotiengviet" do
  version "2.3"
  sha256 :no_check

  url "https://www.trankynam.com/gotv/downloads/GoTiengViet.dmg"
  name "GoTiengViet"
  desc "Type Vietnamese conveniently, accurately, and quickly"
  homepage "https://www.trankynam.com/gotv/"

  livecheck do
    url "https://www.trankynam.com/gotv/macos/GoTiengVietMacOSX-Appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "GoTiengViet.app"
end
