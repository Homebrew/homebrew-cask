cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.110.0"
  sha256 arm:   "8a98b3363b616918db89b16f97194d9cb49a252e43e14c99301def2de6675efd",
         intel: "8629e832f7deaca17c6d358735534f3a7ef6dfd88a7c77f87e713341790a90a4"

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
