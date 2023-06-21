cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.4.0"
  sha256 arm:   "2bc80e918fde623de5c55dabb43d4465eaa791f23952c45653486ee403af9313",
         intel: "99f6e53defc9e2e273e64bbd360e4f253dba4f18b417985b1948cd8853d414dd"

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
