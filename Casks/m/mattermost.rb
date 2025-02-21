cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.11.0"
  sha256 arm:   "703f8d202e994e7305fae6e76bcf277c8955b59096fac2c9f5f18c042551e114",
         intel: "105e5231b874c4b10b525e7f1ee7ce3d267f114822852d97749d258a26dcd225"

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
