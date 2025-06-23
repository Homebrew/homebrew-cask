cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.108.0"
  sha256 arm:   "1c5c4e830671522445ae8052eb411e8115145b1716bb4f19a7fb0b70988fd85b",
         intel: "bda135a09c5d44387abaf08e8a154a0324c428c24567408ac7e81785605cd8b9"

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
