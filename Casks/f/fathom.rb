cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.2.3"
  sha256 arm:   "be2a0666a573c662f2418191d9013ec68bfac5667035eda108d22e09b86dac0f",
         intel: "51da36f6f2a5c15b9d774adfcef302279ad3171a2106b502f8b3674f8cbd210f"

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
