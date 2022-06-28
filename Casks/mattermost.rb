cask "mattermost" do
  arch = Hardware::CPU.intel? ? "x64" : "m1"

  version "5.1.1"

  if Hardware::CPU.intel?
    sha256 "d7bae51221884dce113b9b5cf23efc1245fc6ad2210a1754c0ee266e644da0cf"
  else
    sha256 "787e011ade5f058e1037a271fd974855bc1ee43ed5a31d810d8e86759a678d02"
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
