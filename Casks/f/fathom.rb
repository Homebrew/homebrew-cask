cask "fathom" do
  version "1.35.0"
  sha256 "5d6d923c32c89fb5de65e2d89eeae7542c90e9b8ae3e40489550092851b44f7e"

  url "https://storage.googleapis.com/electron_releases/v#{version}/Fathom-darwin-arm64-#{version}.dmg",
      verified: "storage.googleapis.com/electron_releases/"
  name "Fathom"
  desc "Record and transcribe video conferences"
  homepage "https://fathom.video/"

  livecheck do
    url "https://electron-update.fathom.video/update/darwin_arm64/0.0.0"
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
