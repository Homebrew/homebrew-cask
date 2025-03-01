cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.11.1"
  sha256 arm:   "2d249b5f9eff28afa02e3f51a884551874761e57fee4f3a3bd3e0056b62e49ad",
         intel: "94b0aef64ed96a80dd5a3e668c4052f177c839e1935f10707fe096cbe850e0c3"

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
