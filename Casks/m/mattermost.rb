cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.8.1"
  sha256 arm:   "5cbae21cf2a56e0c2dafdf35683be7639a049048e389a0ad28a6c873c42bc2e3",
         intel: "42e2a4e4b0c06c0f315e70184e666ff455b8c2bc1e3de7d119c473c5e6e841f8"

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
