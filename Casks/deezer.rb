cask "deezer" do
  version "5.30.60"
  sha256 "76c8687a7aebe39cd707810171e536f2400e74a7a8b582867afaab24c8e083f4"

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
    "~/Library/Logs/Deezer",
    "~/Library/Logs/deezer-desktop",
    "~/Library/Preferences/ByHost/com.deezer.*",
    "~/Library/Preferences/com.deezer.deezer-desktop.plist",
    "~/Library/Saved Application State/com.deezer.deezer-desktop.savedState",
  ]
end
