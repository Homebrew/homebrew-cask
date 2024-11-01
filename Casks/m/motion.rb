cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.86.0"
  sha256 arm:   "6d154c0deefd38fd8e8487dc9e7d4d33cda17eda087dd769f2072d59bfa49b74",
         intel: "e0b0af58abbfc49b8344b2fe18314c7e4336750afacbe94ad1733f2f4bdce558"

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
