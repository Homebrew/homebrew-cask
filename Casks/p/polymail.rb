cask "polymail" do
  arch arm: "-arm64"

  version "2.4.3006"
  sha256 arm:   "620a1a5b0ed5923b86c7be1541df1566242a26c411eaf426b9cfcfa7ab46c539",
         intel: "9bd1601af3d8c77246ed6d26c420f6e69e0d74c66f00e04c6dca845f4dd93185"

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
