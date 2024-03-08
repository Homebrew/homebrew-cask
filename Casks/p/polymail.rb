cask "polymail" do
  arch arm: "-arm64"

  version "2.3.4"
  sha256 arm:   "804d89ac47bc39af383fdff63ae8d2c72af070624b7fecb7c84de1abb2f25d53",
         intel: "48547e91583ab34d750fb27c1b207c97a7dc01a227e2603098f2a3915e6ee5b5"

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
