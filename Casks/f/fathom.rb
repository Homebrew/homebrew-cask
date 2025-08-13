cask "fathom" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "1.41.0"
  sha256 arm:   "6b035e7b7e1db7c59c34ed53736522f11b220e7877edbde6d9e15ef7799e8a92",
         intel: "0c8ddb8e93186c4de0197804a81f6cceb7bb36c936c468e25e1efcdac1e3c50d"

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
