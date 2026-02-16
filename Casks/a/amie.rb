cask "amie" do
  arch arm: "-arm64"

  version "260216.1.0"
  sha256 arm:   "1743f22688fe546d080f78d6147ed624f9206ff6e59a22a8a18cfd6607f0e904",
         intel: "8b1f87363a500133920dcf38cc48859d59f02183d87d7b28f82a3b34eeb9fee2"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
