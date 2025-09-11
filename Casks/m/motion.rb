cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.111.0"
  sha256 arm:   "a7748856fa1208cc8e4f3d875331d0a5ff4d5818a35ddb73c9500880904b34ef",
         intel: "7baff9f79cfb107ae8e4da5ded80d6652404f41a4f289bdb737994b85dce8362"

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
