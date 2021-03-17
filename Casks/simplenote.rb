cask "simplenote" do
  version "2.7.1"
  sha256 "419106f2e698a2084569e91f7859729228dc0e10ec6b8a6bf97b816b27226e70"

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
