cask "polymail" do
  arch arm: "-arm64"

  version "2.4.3001"
  sha256 arm:   "830d844734fa3564a5a585d0c1cabc904e614b1cdcc0a3f5de430a4823e4f41a",
         intel: "65d61da6b7ba8dfc440ead349104dea87bd5b9035e3161f3c39b47cf7949e986"

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
