cask "spires" do
  version "2.0.12"
  sha256 "21e1ce6de6605ad0b0ee6ec85e801fcd876428bfa10681baa4ccb138d0bd1d24"

  url "https://member.ipmu.jp/yuji.tachikawa/spires/zips/spires_#{version}.zip"
  name "spires"
  desc "Frontend for inspire-hep and arxiv"
  homepage "https://member.ipmu.jp/yuji.tachikawa/spires/"

  livecheck do
    url "https://member.ipmu.jp/yuji.tachikawa/spires/spires-Update.xml"
    strategy :sparkle
  end

  auto_updates true

  app "spires.app"

  zap trash: [
    "~/Library/Application Support/spires",
    "~/Library/Caches/com.yujitach.spires",
    "~/Library/Cookies/com.yujitach.spires.binarycookies",
    "~/Library/Preferences/com.yujitach.spires.plist",
    "~/Library/Saved Application State/com.yujitach.spires.savedState",
  ]
end
