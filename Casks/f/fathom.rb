cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "aabfcbd4b153e65949706a639437ed6986679b432876ed3ec81bedf603b15e88",
         intel: "e88131b2b7744178c155d869bd460c656847d4a644443d10488f49392506fcf8"

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
