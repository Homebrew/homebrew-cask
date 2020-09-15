cask "spires" do
  version "1.9.4"
  sha256 "121634028843bb345c9d03c5e637ff8194b428035663aaa947ef9bc1594765de"

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
