cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.10.0"
  sha256 arm:   "40499dc8ecc75d584e7352012cda5acbb98c610c0cd7f49697edcce1a5e627f0",
         intel: "af072a7e769f97cb26a662684526d2564e1d53444df803cebc6cf6dc3d0a98a8"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/video.fathom.electron.sfl*",
    "~/Library/Application Support/Fathom",
    "~/Library/Caches/video.fathom.electron*",
    "~/Library/HTTPStorages/video.fathom.electron",
    "~/Library/Logs/Fathom",
    "~/Library/Preferences/video.fathom.electron.plist",
  ]
end
