cask "mediahuman-youtube-downloader" do
  version "3.9.9.94"
  sha256 :no_check

  url "https://www.mediahuman.net/files/YouTubeDownloader.dmg"
  name "MediaHuman YouTube Downloader"
  desc "YouTube videos downloader"
  homepage "https://www.mediahuman.net/youtube-video-downloader/"

  livecheck do
    url :homepage
    regex(/Version:.*?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "MediaHuman YouTube Downloader.app"

  zap trash: [
    "~/Library/Preferences/com.mediahuman.YouTube Downloader.plist",
    "~/Library/Saved Application State/com.mediahuman.YouTube Downloader.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
