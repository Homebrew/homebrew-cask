cask "thedesk" do
  version "25.0.13"
  sha256 "71e902ec2da54bffdde583b6b5c11f714f264d930c7573e152525f110f753ed1"

  url "https://github.com/cutls/thedesk-next/releases/download/v#{version}/TheDesk-#{version}-universal.dmg",
      verified: "github.com/cutls/thedesk-next/"
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
