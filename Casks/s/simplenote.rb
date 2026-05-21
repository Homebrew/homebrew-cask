cask "simplenote" do
  version "2.25.0"
  sha256 "3ba4c6d66e0dfcec6e4ecd638104e296b289f75e057fe16a9f12189950834f11"

  url "https://github.com/Automattic/simplenote-electron/releases/download/v#{version}/Simplenote-macOS-#{version}.dmg"
  name "Simplenote"
  desc "React client for Simplenote"
  homepage "https://github.com/Automattic/simplenote-electron"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Simplenote.app"

  zap trash: [
    "~/Library/Application Support/Simplenote",
    "~/Library/Caches/com.automattic.simplenote",
    "~/Library/Caches/com.automattic.simplenote.ShipIt",
    "~/Library/Saved Application State/com.automattic.simplenote.savedState",
  ]
end
