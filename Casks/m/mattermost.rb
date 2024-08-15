cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.9.0"
  sha256 arm:   "a8426faec849882db043a009144f811f13550dafb32fae69b19136e9faa536fc",
         intel: "593709d03d946ced9a486eb9fdf925bbe79cb6c8b130b6b50ae77caebf8965f9"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://mattermost.com/"

  # Upstream publishes file links in the description of GitHub releases.
  livecheck do
    url "https://github.com/mattermost/desktop"
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Mattermost.app"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Containers/Mattermost.Desktop",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
