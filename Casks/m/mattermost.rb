cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.13.0"
  sha256 arm:   "7e315bb92b7d4284fb7c387ad8c9b07999097615bd4f80e58f8fa9ee45f8efa6",
         intel: "7d8ce8c03bc8bbf39faaf055b745c4ae746a89830c5a57708ba487c5b762426b"

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
