cask "polymail" do
  arch arm: "-arm64"

  version "2.4.3003"
  sha256 arm:   "3adf6371a246ace6936124daf5845ddd335a3ce72a2a8172eafca428c5b6a6cd",
         intel: "4df09aed83ae5b022cc2c3a4ec680b1d55d37103229da0c9bd2cb84dabc7f56d"

  url "https://sparkle-updater.polymail.io/macos#{arch}/builds/Polymail-v#{version}.dmg"
  name "Polymail"
  desc "Email productivity application"
  homepage "https://polymail.io/"

  livecheck do
    url "https://sparkle-updater.polymail.io/macos#{arch}/Polymail-Latest.zip"
    strategy :header_match
  end

  auto_updates true

  app "Polymail.app"

  zap trash: [
    "~/Library/Application Support/Polymail",
    "~/Library/Caches/io.polymail.osx*",
    "~/Library/HTTPStorages/io.polymail.osx",
    "~/Library/Logs/Polymail",
    "~/Library/Preferences/io.polymail.osx.plist",
    "~/Library/Saved Application State/io.polymail.osx.savedState",
  ]
end
