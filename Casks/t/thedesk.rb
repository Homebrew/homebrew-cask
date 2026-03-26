cask "thedesk" do
  version "25.3.1"
  sha256 "c9ae7f36f1c4d63582a7b9d73b61d227929b271e675e9ddbc6b00ed5e1f095dc"

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
