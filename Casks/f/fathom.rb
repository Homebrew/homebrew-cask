cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.10.3"
  sha256 arm:   "7fc5b31347306b988f21cc29009114a223dc8a24eb862d7fc3f9bd27b742e936",
         intel: "a5862dcf1047536993694dac39f90e09a74210ebc8abda4dadc483a7a99ade5d"

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
