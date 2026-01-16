cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "6.0.3"
  sha256 arm:   "61a4ab91f87a2a1a0515b74fce7b08f4261f53ddceeaed0c39fdc6aab0c4e4e3",
         intel: "c4adb1577812ac12fe7477f4eee660315cc4501a577a40a5fa6b7e8e34487b33"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://mattermost.com/"

  livecheck do
    url "https://releases.mattermost.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Mattermost.app"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Containers/Mattermost.Desktop",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
