cask "fathom" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "1.37.0"
  sha256 arm:   "4afbbaf21180906f589efd2c2336f6e5adeda625e379d7e293c267094d4925db",
         intel: "7a43e6b04f1d2a32b6b598e196e5834b481b960b1d6e86d58b42bb74a3f745ea"

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
