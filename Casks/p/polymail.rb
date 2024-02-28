cask "polymail" do
  arch arm: "-arm64"

  version "2.3.3"
  sha256 arm:   "d84f58f34d48b1de64fc1135561c6db2d7051f5cfefce390a0d226d1cc24277c",
         intel: "59f6442fe478738d90177de8dc239752594293fb2105af0455074900f0765c79"

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
