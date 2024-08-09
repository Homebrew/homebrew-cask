cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.83.0"
  sha256 arm:   "9fd94189624c6208f6d856440715ee04c0d4885953e1479723e1b5539c2736ec",
         intel: "e13c1567fa18dbdca191f50126208116cfd56702c61715ac7aefb7e8785289b7"

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
