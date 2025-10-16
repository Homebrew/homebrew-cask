cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.13.2"
  sha256 arm:   "1bc0ac5cbb8e70409f2572f9a2643a67822f85c1cc8f25c9850b80733170ecc0",
         intel: "757742fc832dddb43aece57500019a40ba47c7e4f4be4037deb3bdcbd38db26d"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://mattermost.com/"

  livecheck do
    url "https://releases.mattermost.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

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
