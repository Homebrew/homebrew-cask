cask "spideroak-share" do
  version :latest
  sha256 :no_check

  url "https://spideroak.com/release/share"
  name "SpiderOak Share"
  homepage "https://spideroak.com/spideroak-share/"

  depends_on macos: ">= :sierra"

  app "SpiderOak Share.app"

  zap trash: [
    "~/Library/Logs/Share",
    "~/Library/Preferences/com.spideroak.share.plist",
    "~/Library/Saved Application State/com.spideroak.share.savedState",
  ]
end
