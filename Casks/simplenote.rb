cask "simplenote" do
  version "2.10.0"
  sha256 "3ff2d08e2bf9fa0ddb8d8e282d93b72f00899b21970a0860f57c16b574476e0a"

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.dmg"
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
