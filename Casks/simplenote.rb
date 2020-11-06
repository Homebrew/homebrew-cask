cask "simplenote" do
  version "2.0.0"
  sha256 "0e8696239fc2b144ef50e3af9a7d8e134a586e6422262b34b2c84c1ba71ce9da"

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
