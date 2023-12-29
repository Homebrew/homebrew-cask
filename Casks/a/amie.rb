cask "amie" do
  arch arm: "-arm64"

  version "231229.0.1"
  sha256 arm:   "453428df1d0ee3d9e3e9916f17336e5a5319a9a9c0c7d12a1c77d8ba0cf6724a",
         intel: "da583c5476a2a8f71cc8fbf2b05376e6ffc75b8394768257e04cfad685a57458"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
