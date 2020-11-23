cask "spires" do
  version "2.0.2"
  sha256 "d6a2e86b03c93f0a9b087b138c2745ccd995e796d81bd0d521926c3f82b8b8b5"

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
