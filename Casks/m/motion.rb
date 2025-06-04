cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.106.0"
  sha256 arm:   "525e3fd447a1c3043028098b6dfd45e8b18f74effd1428878c1a9032a28c6124",
         intel: "655c9fd184ef5190de9463c0e8a97d7133f93f566738540d1401b333108d4abc"

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
