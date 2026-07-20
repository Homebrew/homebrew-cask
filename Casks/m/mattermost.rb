cask "mattermost" do
  arch arm: "arm64", intel: "x64"

  version "6.2.2"
  sha256 arm:   "6c8aa5e66a1ee5e8f9887c390f707683056a274d4742b71ce1ca08f9fe8cf259",
         intel: "9f282a4b3cc60f805a57592f6b0a9e92e41d4ebfa6d722e203d6ffb59db8ecaa"

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
