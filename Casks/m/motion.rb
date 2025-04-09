cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.99.0"
  sha256 arm:   "46b4b271c9dc98655e5753d7b87685e36e0c7014cced2f933acc9e3ad0c7d21a",
         intel: "ab6a2b6ce0a045e073c5cc98c705138cc9a14257f202ce237527f6556f62c860"

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
