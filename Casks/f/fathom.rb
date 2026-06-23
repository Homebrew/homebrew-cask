cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "6db6d0c13068cae6395b619ec32e4f64adc104ced3d82e9ccf71fdbd9f5488a4",
         intel: "75b1476782e2925bc06eee7a8e439efcf6257c2b8de9c89dbbe3f47a5d151a10"

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
