cask "mattermost" do
  arch = Hardware::CPU.intel? ? "x64" : "m1"

  version "5.0.3"

  if Hardware::CPU.intel?
    sha256 "948d43a2c7c30e907f5fce20b175b1ca6dd41250e7fe23091dc18d92c74970d3"
  else
    sha256 "0cb0fcd6c7a3198060f5dfa6e7db3ee5a7b5719ea4800d114dcc2cd693dd0d71"
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
