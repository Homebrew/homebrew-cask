cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.103.0"
  sha256 arm:   "9ffe2bf8c484b551c58e36db80f73f3e90815056d8665197686aa595aca583be",
         intel: "24aa4c6bfc73bf638b240bc096a6875b88f32bcacc2005816d30254d8a3eac06"

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
