cask "fathom" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "1.39.0"
  sha256 arm:   "2f6eb696c5c978417905c6aadac4a34aa84e3d388e41de576c280f9622508337",
         intel: "5fbeff2cc17b33dc10dc68e597416f7fd9d7d270bfd97d9f4c248a4861e31477"

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
