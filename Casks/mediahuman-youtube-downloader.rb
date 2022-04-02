cask "mediahuman-youtube-downloader" do
  version "3.9.9.70"
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
end
