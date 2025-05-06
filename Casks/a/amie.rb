cask "amie" do
  arch arm: "-arm64"

  version "250506.0.0"
  sha256 arm:   "894a6950ece94140fac10c901ce989d1376893330d6d707e9a48516107af8bbc",
         intel: "9f29b3475886b2a51cf44dc7e49e6cbb0eb1442da357c55f3913e3df347d4b13"

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
