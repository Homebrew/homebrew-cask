cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.3.3"
  sha256 arm:   "8526d59d19620122044ab147454603feb9bd9bbd310d1faf3bb0a71adb6db3cd",
         intel: "7cd226853882a319cf59f3f70f853d2fa726f9c7cc6eef5df5d626045de841f7"

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
