cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.88.0"
  sha256 arm:   "05bdea256ad6923e0eb75b0b70a40165aa0dc7a371151a0da75c6bcf2c8614cb",
         intel: "eb4d48cdc3ad20a4dfe83f0e67d33ede93a5be61b07e3603b81111de72e96294"

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
