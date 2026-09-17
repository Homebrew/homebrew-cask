cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.8.0"
  sha256 arm:   "233e99c8f3889e846f31b86dafe19bbd6d782fecf0f01940528026f8f2676e54",
         intel: "669f555579c100f288be7d462cadffb4f803eecbeed100c3a6d9e1954e44b069"

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
