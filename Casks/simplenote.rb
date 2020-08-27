cask "simplenote" do
  version "1.21.1"
  sha256 "403551bd4df596c809c7cdf85d5d6caaf8980652734be131d7fe8ca20e8263ca"

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
