cask "mattermost" do
  arch arm: "arm64", intel: "x64"

  version "6.2.0"
  sha256 arm:   "8e8a8ff8d48e9173025c22b0862b7b28a670fdf562b81360b89acef6bde320b6",
         intel: "65c0d1e999aa269883edf471fc0d35cf44da1cca1ecfeb26a5463bc427a14c04"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://mattermost.com/"

  # The electron-builder `latest-mac.yml` file can include unstable versions.
  # The upstream website points to the GitHub releases as the place to find
  # download URLs (linked in the release body text), so we check the latest
  # GitHub release instead.
  livecheck do
    url "https://github.com/mattermost/desktop/"
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Mattermost.app"

  uninstall quit: "Mattermost.Desktop"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Containers/Mattermost.Desktop",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
