cask "spires" do
  version "2.0.3"
  sha256 "4c894aa95860eed5f71fa8ba124026060e903b970645bcb6e89d252257ebf27d"

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
