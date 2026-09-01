cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.7.0"
  sha256 arm:   "a79cc89989a5444c3d4e755a003856e82f299d2f8a419ae1aa8f69111a413723",
         intel: "8cd4032f2ce39e39f2004f865eb78794094b25cee3a0c9d4c519ba3d892ac0c3"

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
