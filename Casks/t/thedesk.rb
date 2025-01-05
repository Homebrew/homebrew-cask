cask "thedesk" do
  version "25.0.15"
  sha256 "6acd958ea4a1ea496bd1b7069a231170c8be5ded50964b712d715dd548bf82b4"

  url "https://github.com/cutls/thedesk-next/releases/download/v#{version}/TheDesk-#{version}-universal.dmg",
      verified: "github.com/cutls/thedesk-next/"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "TheDesk.app"

  zap trash: [
    "~/Library/Application Support/thedesk",
    "~/Library/Preferences/top.thedesk.plist",
    "~/Library/Saved Application State/top.thedesk.savedState",
  ]
end
