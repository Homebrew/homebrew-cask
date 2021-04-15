cask "simplenote" do
  version "2.9.0"
  sha256 "d17549083285d8f120f6ce2ba6390a32f71e4f6a01aaed7269819e3974490666"

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
