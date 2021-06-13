cask "simplenote" do
  version "2.12.0"
  sha256 "3b7b9bbccf320d7c3c7f47d038ec3a1af55fc4f9cfb217b6af86e123d3217e4d"

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
