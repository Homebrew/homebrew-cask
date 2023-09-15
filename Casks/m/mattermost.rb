cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.5.0"
  sha256 arm:   "1f1585bf622c92d03085e1ab26656b368f08b2afb3ecaa2a64238064f4c2f888",
         intel: "4438ad64966798a0476056bb60c9b77da5be23efe2c6f31b62023b67ed79c986"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://mattermost.com/"

  livecheck do
    url "https://github.com/mattermost/desktop/"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mattermost.app"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
