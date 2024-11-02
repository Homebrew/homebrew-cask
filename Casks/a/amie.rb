cask "amie" do
  arch arm: "-arm64"

  version "241031.0.5"
  sha256 arm:   "adb38b3277ffd8a35fcc9eb25962b7d4f4c3ee04e754b65842fe683d18e6fb03",
         intel: "a087701babec35b1dfe3b3837ce81a8641a3193cc8e149b4c519d4a36de5876d"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
