cask "fathom" do
  version "1.35.0"
  sha256 "5d6d923c32c89fb5de65e2d89eeae7542c90e9b8ae3e40489550092851b44f7e"

  url "https://storage.googleapis.com/electron_releases/v#{version}/Fathom-darwin-arm64-#{version}.dmg",
      verified: "storage.googleapis.com/electron_releases/"
  name "Fathom"
  desc "Video conference support, automatic transcription"
  homepage "https://fathom.video/"

  livecheck do
    url "https://electron-update.fathom.video/"
    regex(%r{<div id="version">v(\d+(?:\.\d+)*)</div>}i)
  end

  depends_on macos: ">= :catalina"

  app "Fathom.app"

  uninstall quit: [
    "Fathom Helper",
    "Fathom",
  ]
  uninstall delete: [
    "/Applications/Fathom.app",
    "/Applications/Fathom.app/Contents/Frameworks/Fathom Helper (GPU).app",
    "/Applications/Fathom.app/Contents/Frameworks/Fathom Helper (Plugin).app",
    "/Applications/Fathom.app/Contents/Frameworks/Fathom Helper (Renderer).app",
    "/Applications/Fathom.app/Contents/Frameworks/Fathom Helper.app",
  ]

  zap trash: [
    "~/Library/Application Support/Fathom",
    "~/Library/Logs/Fathom",
  ]
end
