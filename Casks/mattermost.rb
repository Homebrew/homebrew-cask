cask "mattermost" do
  version "4.7.0"
  sha256 "d176db0d7749ecde60b94188f377ea53e9d8725f429c2badebbb8519d7ba3c9c"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://about.mattermost.com/"

  livecheck do
    url "https://docs.mattermost.com/install/desktop.html#macos-10-9"
    strategy :page_match
    regex(%r{href=.*?/mattermost-desktop-(\d+(?:\.\d+)*)-mac\.dmg}i)
  end

  app "Mattermost.app"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
