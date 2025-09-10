cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.13.1"
  sha256 arm:   "0485f5f57ec848f4d40183e7db867cfe4bc17b3fe385675c49861579c8e2aa2b",
         intel: "1ed1338e4e0611e0ed5760a585caed33a4a93672108e0771cdb5d375efae52a7"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://mattermost.com/"

  livecheck do
    url "https://releases.mattermost.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Mattermost.app"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Containers/Mattermost.Desktop",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
