cask "polymail" do
  arch arm: "-arm64"

  version "2.3.1"
  sha256 arm:   "09562d844aa3a6c5887068c53e8c54cbff4125581d8a999d75f9e919b3b50e62",
         intel: "34bcce161d0bc9517ee17b68d9746ec524d6bcba49f643274df8c0d9e821204e"

  url "https://sparkle-updater.polymail.io/macos#{arch}/builds/Polymail-v#{version}.zip"
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
