cask "thedesk" do
  version "25.1.1"
  sha256 "e0b209f418291b0a3c0e7ae9f763bd405233cc107b733da63ec43b26f2175e3d"

  url "https://github.com/cutls/thedesk-next/releases/download/v#{version}/TheDesk-#{version}-universal.dmg",
      verified: "github.com/cutls/thedesk-next/"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "TheDesk.app"

  zap trash: [
    "~/Library/Application Support/thedesk",
    "~/Library/Preferences/top.thedesk.plist",
    "~/Library/Saved Application State/top.thedesk.savedState",
  ]
end
