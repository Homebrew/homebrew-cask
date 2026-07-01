cask "simplenote" do
  version "2.27.1"
  sha256 "6ff36e3488ea2fb1e8c4bb20f6646a76c3caeb91b7d90c7d31ec421383e68903"

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
