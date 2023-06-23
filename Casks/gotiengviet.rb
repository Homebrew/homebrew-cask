cask "gotiengviet" do
  version "2.4"
  sha256 "c3be5eb6ad582674489fee63b45bfd97b34bd5501f4c766616a818a002138c18"

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
