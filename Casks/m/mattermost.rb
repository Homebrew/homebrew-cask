cask "mattermost" do
  arch arm: "arm64", intel: "x64"

  version "6.1.1"
  sha256 arm:   "55acdb9898c76f223cf8fd218f67db384b1aebdce14a37e7a42c8a7fe3b1b26c",
         intel: "c527a587d62dd470461bcec6a32c04742d282c2428a09ff2a21eb28374940564"

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
