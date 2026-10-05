cask "thedesk" do
  version "25.6.1"
  sha256 "77addeff78e831797627ea60ef563a7e4675c3042bdb47631975737d14788a20"

  url "https://github.com/cutls/thedesk-next/releases/download/v#{version}/TheDesk-#{version}-arm64.dmg"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "TheDesk.app"

  zap trash: [
    "~/Library/Application Support/thedesk",
    "~/Library/Preferences/top.thedesk.plist",
    "~/Library/Saved Application State/top.thedesk.savedState",
  ]
end
