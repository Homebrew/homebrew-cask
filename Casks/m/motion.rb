cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.104.0"
  sha256 arm:   "fad7e86e35f042e6c51b63d48776589304d1c15f030e1b7ab285f6102cff94b1",
         intel: "f120d98996c021624d82b286f8efa6e4a4cfc83e02406eaab83d4b4997c880bb"

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
