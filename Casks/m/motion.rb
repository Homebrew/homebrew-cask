cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.98.0"
  sha256 arm:   "d430674077ad61af7dcf602fb888d5fd980994f428f3fc5ca44023821cb1d523",
         intel: "3aaa2da54ba655b9513a2ef412f9e9bfa94a73e4bc7c08c82609f519905173c6"

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
