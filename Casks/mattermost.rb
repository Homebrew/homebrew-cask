cask "mattermost" do
  arch = Hardware::CPU.intel? ? "x64" : "m1"

  version "5.0.2"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  if Hardware::CPU.intel?
    sha256 "214e9a2246465b2b8d886b8bce2d537580b3036448d3b7133beee5c48abb210c"
  else
    sha256 "b6d26d3a711dd88c143420ea46e3c61a66e9ac0dc04a8764211e882feeb11cbe"
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
