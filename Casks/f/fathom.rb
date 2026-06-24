cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.2.2"
  sha256 arm:   "09cdb2766f50259c267cb739d4ba80ea9414f5df8a75651a767477b226cfc8d4",
         intel: "04f0dab59b84138c29f450e8b840ab248b8fefb200dfca104a5f4bf04366edf0"

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
