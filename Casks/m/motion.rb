cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.94.0"
  sha256 arm:   "e462011b22a561c9d98258ded80a765634619cc9afee7ceb3e5d100bedfb33e7",
         intel: "723b838ebf35d58ca2f040cfa919e9b10731d936cb03f151423f75991c8cba9f"

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
