cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.100.0"
  sha256 arm:   "15a61395d75b2ca8134f5bed15421080e1807395c0bd1ff2b78fa4ec7dbe4509",
         intel: "c3774cab8e7104e5b3d7c14875aabffb46f22475a042f19303bd58cfc3027c72"

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
