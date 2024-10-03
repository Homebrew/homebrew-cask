cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.84.0"
  sha256 arm:   "3d10d3d7417dcaf7115389f3cb54178a18f61e79ce467e86e8b3c2080314cea6",
         intel: "49bd964b9f6ce656982a0c10e5f89a8c6e2029c9e29f4683a52b0cd813b6be7e"

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
