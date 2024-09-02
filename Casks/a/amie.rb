cask "amie" do
  arch arm: "-arm64"

  version "240902.0.0"
  sha256 arm:   "6b65ef7b785c53f0aa35549b6884d3df85bde1d6805d67ba7ca0250b22217298",
         intel: "884d703154b019a3569c82247d619d2186ed022013b5c850fe3d7f6e6110d935"

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
