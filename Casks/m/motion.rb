cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.85.0"
  sha256 arm:   "a276424ef686c0f14dfff2edfd7e142087e88dd7190789b4b20ac5a077d6b3b3",
         intel: "a6000cad57fd5397670b90058cdb250b97ffcf289a847f1f6beb0800baa0d283"

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
