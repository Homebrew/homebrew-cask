cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.10.2"
  sha256 arm:   "e8a1d76e88bb64b313fc8fed47676187691710dc74f240a3db17bbf8faf4eb0d",
         intel: "47371fa62ef12424d01631e6affac61eeec49aba3ea36ec84711ece0a955b5ab"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://mattermost.com/"

  livecheck do
    url "https://releases.mattermost.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Mattermost.app"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Containers/Mattermost.Desktop",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
