cask "amie" do
  arch arm: "-arm64"

  version "231221.0.0"
  sha256 arm:   "9b3421bde902874e46e52a5c8003dca64831318e4d142133b5d9d6f1e4169906",
         intel: "2ca356fdbd6014e8ef023a477ad30a666d7455d2224418317ea6005507f626b4"

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
