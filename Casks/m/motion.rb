cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.91.0"
  sha256 arm:   "fb55f0a57d09e5445827a4bd4249eb52a26c8591fc58dfb0ca3515af4133bab9",
         intel: "00a4db648dfa58478b6fb491d801d12f1096bbcc86a2336b7d9c244e8181252f"

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
