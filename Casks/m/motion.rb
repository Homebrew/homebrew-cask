cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.96.0"
  sha256 arm:   "8aee7c58e84c5b9492fb27125e10802c0849337b161d9aa822702892d90554c1",
         intel: "ce9c7ac0c3d3f726c9462c360a065fc9d7c5c5e6dc0e7c479148d1bac6f6aa3e"

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
