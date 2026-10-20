cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.10.1"
  sha256 arm:   "0fc62caa0938d06d231169edc21aa675fa5df26333f070c38e6ed898a7880782",
         intel: "79355e0815c6a933cc6ceab8ec157feda5af7e6df3c295c7ba6ca1d06e303fce"

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
