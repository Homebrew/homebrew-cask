cask "polymail" do
  arch arm: "-arm64"

  version "2.4.3004"
  sha256 arm:   "1d0501ffd2140e23bb9debd416a5cca291b91ce2cdd64755527e836a7a59d465",
         intel: "8a5092e91febe0c0af585d8ba5418300422e2a24abba0caee14cd7125eb3db4f"

  url "https://sparkle-updater.polymail.io/macos#{arch}/builds/Polymail-v#{version}.dmg"
  name "Polymail"
  desc "Email productivity application"
  homepage "https://polymail.io/"

  livecheck do
    url "https://sparkle-updater.polymail.io/macos#{arch}/Polymail-Latest.zip"
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

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
