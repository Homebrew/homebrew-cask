cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.13.0"
  sha256 arm:   "b26f664ffeee717d3c5f216fc2e8a3b4fc5bfc5e5e132e76744e5a3e49fcc9f0",
         intel: "002f37e8b662387052237db3ffbff6d3637833acec3f3e248a98eb643c97f54f"

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
