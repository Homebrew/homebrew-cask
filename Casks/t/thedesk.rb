cask "thedesk" do
  version "25.6.2"
  sha256 "f7460bc38d07b57b63a15b5dcdb464e01f68f507b781e652b1554dfcd9c4bc59"

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
