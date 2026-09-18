cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.8.1"
  sha256 arm:   "6863bc3e084b34cd9fe3b8fe8363a26381a8bf2d1f5f4dd24dd9fb70dffc2fb4",
         intel: "478d002c7ed11a0e3a207a7bf04bad9a7c4405bea84c835466e05255569074b3"

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
