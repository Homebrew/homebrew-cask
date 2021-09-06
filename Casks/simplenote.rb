cask "simplenote" do
  version "2.17.0"
  sha256 "d96f01e167fd9cf4cd208f2c866ccd6be40510d60f99fda9f8d7c23e6bb8d22e"

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.dmg"
  name "Simplenote"
  desc "React client for Simplenote"
  homepage "https://github.com/Automattic/simplenote-electron"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Simplenote.app"

  zap trash: [
    "~/Library/Application Support/Simplenote",
    "~/Library/Caches/com.automattic.simplenote",
    "~/Library/Caches/com.automattic.simplenote.ShipIt",
    "~/Library/Saved Application State/com.automattic.simplenote.savedState",
  ]
end
