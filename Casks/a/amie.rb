cask "amie" do
  arch arm: "-arm64"

  version "250901.0.0"
  sha256 arm:   "d6a3b4bda74904cacb73ae3479a079940472ffb6ab6a5bca6c30afc0848663b2",
         intel: "58a9659b053c1cf66cfdff55395ddb3d1440c3cb4a5ea90f923b739bc4acf293"

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
