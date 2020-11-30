cask "simplenote" do
  version "2.2.0"
  sha256 "d2cb3841f67777de9986024c97407289404568a4bcab1484f00aff25658fc552"

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.dmg"
  appcast "https://github.com/Automattic/simplenote-electron/releases.atom"
  name "Simplenote"
  homepage "https://github.com/Automattic/simplenote-electron"

  app "Simplenote.app"

  zap trash: [
    "~/Library/Application Support/Simplenote",
    "~/Library/Caches/com.automattic.simplenote",
    "~/Library/Caches/com.automattic.simplenote.ShipIt",
    "~/Library/Saved Application State/com.automattic.simplenote.savedState",
  ]
end
