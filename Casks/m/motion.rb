cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.112.0"
  sha256 arm:   "08225d757595d2c7fc16a081b1fe2661da2632e08c9ee330e0dea83ef439ed00",
         intel: "ea2a4e69835001ce77a64819df968374c15120c6b7e5475f06b2257e87eb909e"

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

  app "Motion.app"

  zap trash: [
    "~/Library/Application Support/Motion",
    "~/Library/HTTPStorages/com.electron.motion*",
    "~/Library/Logs/Motion",
    "~/Library/Preferences/com.electron.motion.plist",
    "~/Library/Saved Application State/com.electron.motion.savedState",
  ]
end
