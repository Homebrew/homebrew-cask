cask "fathom" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "1.36.0"
  sha256 arm:   "a41140c4f92ed15bd33deb40136aff0b773c66f4fd660c72f83891c9c5934771",
         intel: "877c70b85c561b8c25978fd872343375bafc1d5ba770017d571d6a326e92561e"

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
