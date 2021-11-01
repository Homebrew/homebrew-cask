cask "mattermost" do
  arch = Hardware::CPU.intel? ? "x64" : "m1"

  version "5.0.1"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  if Hardware::CPU.intel?
    sha256 "ec5248c285dc08eb6f6c311dc60192391721640c7a81e64a0a7f7f972239b3ef"
  else
    sha256 "c4a3205a9bbc886f056c989e5c8678ba6c2080ce9881451facd178807e3b6c66"
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
