cask "spires" do
  version "2.0.0"
  sha256 "6e4b4f2de59ba532dd5a98eb6fe032113cd77183372d70caf7755ceeb1e0e35e"

  url "https://member.ipmu.jp/yuji.tachikawa/spires/zips/spires_#{version}.zip"
  appcast "https://member.ipmu.jp/yuji.tachikawa/spires/spires-Update.xml"
  name "spires"
  desc "Frontend for inspire-hep and arxiv"
  homepage "https://member.ipmu.jp/yuji.tachikawa/spires/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "spires.app"

  zap trash: [
    "~/Library/Application Support/spires",
    "~/Library/Caches/com.yujitach.spires",
    "~/Library/Cookies/com.yujitach.spires.binarycookies",
    "~/Library/Preferences/com.yujitach.spires.plist",
    "~/Library/Saved Application State/com.yujitach.spires.savedState",
  ]
end
