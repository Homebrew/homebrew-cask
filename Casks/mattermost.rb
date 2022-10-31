cask "mattermost" do
  arch arm: "m1", intel: "x64"

  version "5.2.0"
  sha256 arm:   "721946c3750dc28203af10a9696a22b5487a7d3c8178d79795fa906ec89644c2",
         intel: "3bf5cbaeef54dc1ae41736c79bfd39bae82b2755fa51cefb183275807e9ce085"

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
