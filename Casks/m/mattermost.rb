cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.11.2"
  sha256 arm:   "348d5383e6b30ecf3da6c951454f570cc0b80bf6707a17869253c5e35a51e46c",
         intel: "bb2e6853271e19540ab4c164a621739d2e34b2a10f0875908719ec263d998bbb"

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
