cask "amie" do
  arch arm: "-arm64"

  version "260831.0.0"
  sha256 arm:   "024f3b4ab668585c772e94668183d1de8f84904ed6901b2a1026af65a1433372",
         intel: "6a2347c2dc8d23f9ec5d2d4ee222f28dd133874a499b44473ae669d80f39f02a"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: :monterey

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
