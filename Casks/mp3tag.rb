cask "mp3tag" do
  version "3.01"
  sha256 "052a58e5eb590c248d02af27fffe50b7a0825f7e2bcea2eb2aac03e90be34d5f"

  url "https://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  appcast "https://www.mp3tag.de/en/mac-osx.html"
  name "MP3TAG"
  homepage "https://www.mp3tag.de/en/"

  depends_on macos: "<= :mojave"

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"

  zap trash: [
    "~/Library/Application Support/de.mp3tag.Mp3tag_*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.mp3tag.mp3tag_*.sfl*",
    "~/Library/Caches/org.kronenberg.Winetricks",
    "~/Library/Preferences/org.kronenberg.Winetricks.plist",
  ]
end
