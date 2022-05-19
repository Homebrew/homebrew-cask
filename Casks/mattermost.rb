cask "mattermost" do
  arch = Hardware::CPU.intel? ? "x64" : "m1"

  version "5.1.0"

  if Hardware::CPU.intel?
    sha256 "54ab4cdc253c7fa449067d6e3a95ee1d28fe65ff4ac9cb96b5efc9a37d114a7c"
  else
    sha256 "a5010c4aa7d79f1d7c849c7d8c11ab8aacffe1dea0176e0d801349adeec9628a"
  end

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://about.mattermost.com/"

  livecheck do
    url "https://docs.mattermost.com/install/desktop-app-install.html#macos-10-9"
    regex(%r{href=.*?/mattermost[._-]desktop[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg}i)
  end

  app "Mattermost.app"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
