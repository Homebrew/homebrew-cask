cask "fathom" do
  arch arm: "arm64", intel: "x64"
  on_arch_conditional arm: "_arm64"

  version "3.2.0"
  sha256 arm:   "07c6a4bddaa3b39e73d3bba735b13ca0769dace502efea63ed173d25ea3ad3ce",
         intel: "33eb9dd4f272a353eb8bdb6b1c931bb4dcd57973ae2fab688373b5ced1bf6d1a"

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
