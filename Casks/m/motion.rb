cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.116.0"
  sha256 arm:   "5f96ed79ba83a51f0d7abfbb14002ea4cccf8eb19621cbc5b58ea4ed1bbd4faf",
         intel: "3f49633854cec1287e42898256cd9f821d0d6f9270a0fba9d07be2d1f296e2ac"

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
  depends_on macos: ">= :big_sur"

  app "Motion.app"

  zap trash: [
    "~/Library/Application Support/Motion",
    "~/Library/HTTPStorages/com.electron.motion*",
    "~/Library/Logs/Motion",
    "~/Library/Preferences/com.electron.motion.plist",
    "~/Library/Saved Application State/com.electron.motion.savedState",
  ]
end
