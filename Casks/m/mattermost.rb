cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "6.0.2"
  sha256 arm:   "78c6730c0ff3524f7d8f65b5acb7ee239829317a702d40d90de951e0a554119d",
         intel: "081c5ba30f7f9ee9ad7f51b37d73a1baebf1b50c7c14304f4c83af76b1e111f7"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://mattermost.com/"

  livecheck do
    url "https://releases.mattermost.com/desktop/latest-mac.yml"
    strategy :electron_builder
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
