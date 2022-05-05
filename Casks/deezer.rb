cask "deezer" do
  version "5.30.220"
  sha256 "e34bdf8b00e0b9575f500ee684fbc4f0f94680a23f816b3ad9b542f3efcbe1ab"

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name "Deezer"
  desc "Music player"
  homepage "https://www.deezer.com/download"

  livecheck do
    url "https://www.deezer.com/desktop/download?platform=darwin&architecture=x64"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Deezer.app"

  zap trash: [
    "~/Library/Application Support/Caches/deezer-desktop-updater",
    "~/Library/Application Support/deezer-desktop",
    "~/Library/Caches/com.deezer.deezer*",
    "~/Library/Logs/Deezer",
    "~/Library/Logs/deezer-desktop",
    "~/Library/Preferences/ByHost/com.deezer.*",
    "~/Library/Preferences/com.deezer.deezer-desktop.plist",
    "~/Library/Saved Application State/com.deezer.deezer-desktop.savedState",
  ]
end
