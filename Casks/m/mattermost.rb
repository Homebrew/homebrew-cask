cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "6.0.0"
  sha256 arm:   "d433fe1761fafed1fc96bb5484dd424d85d1e3a502ad2ded6759855df3103712",
         intel: "7a726a6987b04e5b28ec13793a54e5fc430136a2da4ffae4e69d3fed3a18e53e"

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
