cask "polymail" do
  arch arm: "-arm64"

  version "2.3.11"
  sha256 arm:   "b6b09c585fb718c4c2c960e103bd453ec9d922237d9cf59f87467d8eafe60c34",
         intel: "899239e04e97aa08ef5ba48f09c9a4870a42bd7657750c83fa4ba6ffc7c5f152"

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
