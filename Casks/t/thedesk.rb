cask "thedesk" do
  version "25.0.14"
  sha256 "42c753c18a788aead76059b30a70730de36d4f1408abf2703d0e9aa58ff30891"

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
