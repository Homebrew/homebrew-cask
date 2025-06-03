cask "amie" do
  arch arm: "-arm64"

  version "250530.0.7"
  sha256 arm:   "2d7126c45690008364450009e7df1c850f2d3495c13212cd45882cdb1cc7f891",
         intel: "9a711f8ce5574c3b77b6a666affb540dc039fdb8eda28fd9a4212bcab76340ab"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
