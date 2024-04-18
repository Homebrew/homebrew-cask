cask "polymail" do
  arch arm: "-arm64"

  version "2.3.10"
  sha256 arm:   "a28d32abdddaac548040414bc598860ac6fa4741aab3ad0eaad88c7b66f1b7fe",
         intel: "af3544111b813dcd701d4350e3789c581423c818c2f6153b607f44f674c4bcc0"

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
