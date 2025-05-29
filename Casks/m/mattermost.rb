cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.12.1"
  sha256 arm:   "b68b4b2334b10c74d29f8c6954a09e69f5b77c93c8b8f3f139c48fdc03f6d16f",
         intel: "1202c95333c1ee9de2ea431b5cab80b078b34a1834896f6581ff31beb254474e"

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
