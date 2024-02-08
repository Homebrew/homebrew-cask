cask "thedesk" do
  version "24.2.0"
  sha256 "381ab60b70f0a9f9032ab3a7c8a27b6a0f177d7e398a6039ab8fa6240c12172b"

  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}-universal.dmg",
      verified: "github.com/cutls/TheDesk/"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TheDesk.app"

  zap trash: [
    "~/Library/Application Support/thedesk",
    "~/Library/Preferences/top.thedesk.plist",
    "~/Library/Saved Application State/top.thedesk.savedState",
  ]
end
