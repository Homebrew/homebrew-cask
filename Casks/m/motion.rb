cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.102.0"
  sha256 arm:   "fdde65d9eac6967ef2bb90f5a288a0febf74e5b5068a5005fe26706b22306788",
         intel: "ef5560af8575f41c25f595fe5e0e83e7667ff1a815dfa3d5710c816e9087b96f"

  url "https://github.com/usemotion/desktopapp/releases/download/#{version}/motion-#{version}-mac-#{arch}.zip",
      verified: "github.com/usemotion/desktopapp/"
  name "Motion"
  desc "To-do list and project management app"
  homepage "https://www.usemotion.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Motion.app"

  zap trash: [
    "~/Library/Application Support/Motion",
    "~/Library/HTTPStorages/com.electron.motion*",
    "~/Library/Logs/Motion",
    "~/Library/Preferences/com.electron.motion.plist",
    "~/Library/Saved Application State/com.electron.motion.savedState",
  ]
end
