cask "mattermost" do
  version "4.7.2"

  if Hardware::CPU.intel?
    sha256 "e23a261329920daef2e265f8ab25e5601af581452a751d173f687d7fc14a4101"
    url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  else
    sha256 "23e1bc8b098a23485bd0b9b2c388e250603646cb76b654af61f4283ebeb4a7c3"
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
