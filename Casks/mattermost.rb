cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.2.2"
  sha256 arm:   "33bbc52a9a12b1984be7cbd20133528a461df380339a89cb7a78c8b32e1bddb7",
         intel: "07b846fa51a68c60a5cdb822f7808684e2a5304e7afb5b4362960aef5f9dc504"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac-#{arch}.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://about.mattermost.com/"

  livecheck do
    url "https://docs.mattermost.com/install/desktop-app-install.html#macos-10-9"
    regex(%r{href=.*?/mattermost[._-]desktop[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "Mattermost.app"

  zap trash: [
    "~/Library/Application Support/Mattermost",
    "~/Library/Logs/Mattermost",
    "~/Library/Preferences/Mattermost.Desktop.plist",
    "~/Library/Saved Application State/Mattermost.Desktop.savedState",
  ]
end
