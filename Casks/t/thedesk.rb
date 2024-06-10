cask "thedesk" do
  version "24.2.1"
  sha256 "5499ed955ad4131ef925cae04923ec58b3a550187a8289945d67ce22634c6639"

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
