cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.109.0"
  sha256 arm:   "3b2a178f026a16488f1ec0276afaf248a12dfe1487017b48b10ad13f3c9f48db",
         intel: "840e0072297982e697ad92eff0d714fe81205edae2de4f429338bc070f2daaa5"

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
