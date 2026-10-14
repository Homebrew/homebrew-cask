cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "97416c23fd20cd34b9286fb289bb11b16e553f6c5fc26c9923658d585c983ba3",
         intel: "8c55d28c30dd0fd9f0d13f6b2c825d66c7311c5ed72518413bc36e7e9ab7f40b"

  url "https://electron-update.fathom.video/download/file/Fathom-darwin-#{arch}-#{version}.dmg"
  name "Fathom"
  desc "Record and transcribe video conferences"
  homepage "https://fathom.video/"

  livecheck do
    url "https://electron-update.fathom.video/"
    regex(%r{href=.*?/releases/tag/v?(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: :monterey

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
