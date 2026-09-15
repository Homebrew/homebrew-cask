cask "mattermost" do
  arch arm: "arm64", intel: "x64"

  version "6.3.0"
  sha256 arm:   "b6d22403e8a96cf54ba3a9ecf7267a5c7bb7ce225249ce12d53a60c8b4db5bfd",
         intel: "9d7d9bed269c079a6bbe9e35b8275b03caeb85843b2d1aab3612e1063f9e4c0d"

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
