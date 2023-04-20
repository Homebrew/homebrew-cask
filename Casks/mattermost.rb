cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.3.1"
  sha256 arm:   "1cb973fc0c9af86607358a4c688d30f9d0f1037ad0a27d868106f5552e8f120b",
         intel: "c3c2d87feb549bd564227e16e13013b785c2eca321c9ac88caf54df9400ace2e"

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
