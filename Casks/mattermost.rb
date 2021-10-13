cask "mattermost" do
  arch = Hardware::CPU.intel? ? "x64" : "m1"

  version "5.0.0"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  if Hardware::CPU.intel?
    sha256 "78529aea98c0a6d98ce68da76ee4b982bfcfb8a7078d4a553341ad3e79f3cc6e"
  else
    sha256 "cae46ab7c963fb8ececef42f204b3e10583f5446ebb8bd2331dfac0d6eb36bbd"
  end

  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://about.mattermost.com/"

  livecheck do
    url "https://docs.mattermost.com/install/desktop-app-install.html#macos-10-9"
    strategy :page_match
    regex(%r{href=.*?/mattermost-desktop-(\d+(?:\.\d+)*)-mac-#{arch}\.dmg}i)
  end

  app "Mattermost.app"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
