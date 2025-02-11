cask "fathom" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "1.38.0"
  sha256 arm:   "3d2a3fc49145372b85dfb739bb5fae6b563c74dcd7f88b7e2b0a38c407db8e7c",
         intel: "aa073d828d50c9941c12a8ab47502830a5feb0aa8db015526aca38551f4741da"

  url "https://storage.googleapis.com/electron_releases/v#{version}/Fathom-darwin-#{arch}-#{version}.dmg",
      verified: "storage.googleapis.com/electron_releases/"
  name "Fathom"
  desc "Record and transcribe video conferences"
  homepage "https://fathom.video/"

  livecheck do
    url "https://electron-update.fathom.video/update/darwin#{livecheck_arch}/0.0.0"
    strategy :json do |json|
      json["name"]&.tr("v", "")
    end
  end

  depends_on macos: ">= :catalina"

  app "Fathom.app"

  uninstall quit: [
    "Fathom Helper",
    "Fathom",
  ]

  zap trash: [
    "~/Library/Application Support/Fathom",
    "~/Library/Logs/Fathom",
  ]
end
