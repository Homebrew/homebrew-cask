cask "mattermost" do
  version "4.7.1"

  if Hardware::CPU.intel?
    sha256 "e4c580ebb9b6c55da2569cf0ee6dbcbed413310213a9bf86e6cdf7b716226a93"
    url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  else
    sha256 "241dcc2e8840958415a827cdc25f8306615265f23927ec34573d597f1348928b"
    url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-m1.zip"
  end

  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://about.mattermost.com/"

  livecheck do
    url "https://docs.mattermost.com/install/desktop-app-install.html#macos-10-9"
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
