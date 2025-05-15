cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.12.0"
  sha256 arm:   "b56a7cdcd610dd07b6f4caa9ef8861593e515bdb82266f13b1258ea2475b60f9",
         intel: "2d9ba0ca434351ec7ed5e5a750805c64323d10f5e14db9a3835237f8f3f1d042"

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
