cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.8.2"
  sha256 arm:   "7b0a5827fffc38817712808130118564a7e151d089a68f17a7834e169f23edd0",
         intel: "77099bcc21a15529bd78e6f2f649ee51e6c1d83beec51ceac4181fdf7a7d17e2"

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
