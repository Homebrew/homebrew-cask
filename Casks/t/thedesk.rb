cask "thedesk" do
  version "25.6.0"
  sha256 "cac4d400fe09c9f3237b29f769a9bde84102cef89d968a69bcbe8823c7ae0c7a"

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
