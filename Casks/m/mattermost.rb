cask "mattermost" do
  arch arm: "arm64", intel: "x64"

  version "6.2.1"
  sha256 arm:   "112cc02840a1360889dc45f07c39dca6dd2368b81b9553289bea236368ef152e",
         intel: "56d86be2fe1315e1a3485f34dffaa44f4890ee170dc5dae2ce2a4f0973c91207"

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
