cask "amie" do
  arch arm: "-arm64"

  version "250414.0.2"
  sha256 arm:   "c4e283d6458f75fe4b984cacf960f54b3e84af50f8cb90b67170dc91657a2aeb",
         intel: "1c53a14d242d09bd7263405af7fa24e203c38cbc6dee75e9ca97066ad70fbccd"

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
