cask "amie" do
  arch arm: "-arm64"

  version "240705.0.0"
  sha256 arm:   "dd7eda3a47b029c45ee2f8ccc8ad4c16bafe0a86b4c2a387ccb647d32708e0f7",
         intel: "8d2e7dcc889eb83f26a05e4a5aed923bc969ebbc68c8ff52d70979948f099c53"

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
