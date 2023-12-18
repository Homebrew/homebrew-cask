cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.6.0"
  sha256 arm:   "f1cdbe5bb848b774075fcfe4ce1d7a1bb92ea0e9f1d7de4b48fe7144fa8a4a3e",
         intel: "fdcbe98d1c8a9b81cc6ee3aaab8ee91e8b7542d6caa903dd0055cfdec462b381"

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
