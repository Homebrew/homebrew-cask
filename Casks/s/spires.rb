cask "spires" do
  version "2.0.11"
  sha256 "e5a9b1e1371f006745de25f7a69ee4b298afd38d46add51f4178f0484473e400"

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
