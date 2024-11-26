cask "fathom" do
  version "1.36.0"
  sha256 "a41140c4f92ed15bd33deb40136aff0b773c66f4fd660c72f83891c9c5934771"

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
