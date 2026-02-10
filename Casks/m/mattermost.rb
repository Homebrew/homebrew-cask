cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "6.0.4"
  sha256 arm:   "86d5063c9ccdc81fa89dd9f49b4dd7585e601c4d960be56fef25d116ed90f446",
         intel: "c545516566e42647135caf8c3379fdda36a7aa075c28283579789ae2181b8722"

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
