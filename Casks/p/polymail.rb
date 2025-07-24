cask "polymail" do
  arch arm: "-arm64"

  version "2.3.14"
  sha256 arm:   "2f2e57482a294c195e8375f5c6e63cccbce91e6db91612cc4be201fd15e29635",
         intel: "718ee46896e65aabeb75dbdc230252527b57748bb3742cb0932e86d8c875551d"

  url "https://sparkle-updater.polymail.io/macos#{arch}/builds/Polymail-v#{version}.dmg"
  name "Polymail"
  desc "Email productivity application"
  homepage "https://polymail.io/"

  livecheck do
    url "https://sparkle-updater.polymail.io/macos#{arch}/Polymail-Latest.zip"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
