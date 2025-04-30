cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.101.0"
  sha256 arm:   "e6618c4c248a2c5ca8a4991c58e0bd445924d4a0b822d22e997f1e6b3953bd1c",
         intel: "192841ddf130b05da4cf727bc7e1e5dbff049985aef68a086c6513fd9b8b2e50"

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
