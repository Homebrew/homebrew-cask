cask "mattermost" do
  arch = Hardware::CPU.intel? ? "x64" : "m1"

  version "5.0.4"

  if Hardware::CPU.intel?
    sha256 "3a923e9171df0dc78be6d82c637c1a040aceae596e49ae06465c3c4c045d4f97"
  else
    sha256 "6cd18cbce039a23638e802aa4ada7ab2582d63ccb8bc9f34321f6d3da1fcdc7b"
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
