cask "amie" do
  arch arm: "-arm64"

  version "240328.0.0"
  sha256 arm:   "8ca54a62f729583ac3c9c3292d0ba33d5ad7ad7b599686bf25cd6fb1039b84ef",
         intel: "02feaeb99ad8474d927e868daaff9fefb5cf59b30cddec586771834dad6a8373"

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
