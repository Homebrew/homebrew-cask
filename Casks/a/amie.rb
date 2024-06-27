cask "amie" do
  arch arm: "-arm64"

  version "240618.1.5"
  sha256 arm:   "5fe459e4af0819f8d4a428122c9dbec811e704d5ddb5decf93b5afc5372b53e0",
         intel: "32ec5597a350165e89fec1d4778f755ba2625bc738038d3a8d9610dddc4a186c"

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
