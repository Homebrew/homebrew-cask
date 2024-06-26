cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.71.0"
  sha256 arm:   "309f8ac04211305186f1fe4a23284837e0c0396904c0bc6c8f4ff1dafa07bdef",
         intel: "78f887abed9039e61c273dd969cecd44de0592fdebc7c230abd5ef06da134e44"

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
