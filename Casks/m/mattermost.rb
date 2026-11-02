cask "mattermost" do
  arch arm: "arm64", intel: "x64"

  version "6.3.2"
  sha256 arm:   "7adb624266d125f9ac7d293cc742da52221f0e60991c0728de208c980da3ef33",
         intel: "c256f69c8d57c1e527bee27205015f0fcc22da2590d11e55afd8d73bce55c5e6"

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
