cask "thedesk" do
  version "25.5.1"
  sha256 "00dc2bf55b134473d8fd687721a369734b9fbb26cdfd3e911ef5e87fffbbf941"

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
