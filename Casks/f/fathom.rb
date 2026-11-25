cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.15.0"
  sha256 arm:   "73f8ab87e7fc86a0df477a7c9dca6b1a992292714e3fabcfac2ca78383bc1813",
         intel: "ec9bbadf1b359d3c9c2ead5d50f8eb356da7e5299d26b50c9403d161d2ec1eea"

  url "https://electron-update.fathom.video/download/file/Fathom-darwin-#{arch}-#{version}.dmg"
  name "Fathom"
  desc "Record and transcribe video conferences"
  homepage "https://fathom.video/"

  livecheck do
    url "https://electron-update.fathom.video/"
    regex(%r{href=.*?/releases/tag/v?(\d+(?:\.\d+)+)}i)
  end

  auto_updates true
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
