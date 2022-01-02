cask "mediahuman-youtube-downloader" do
  version "3.9.9.64"
  sha256 :no_check

  url "https://www.mediahuman.com/files/YouTubeDownloader.dmg"
  name "MediaHuman YouTube Downloader"
  desc "YouTube videos downloader"
  homepage "https://www.mediahuman.com/youtube-video-downloader/"

  livecheck do
    url :homepage
    regex(/Version:.*?(\d+(?:\.\d+)+)/i)
  end

  app "MediaHuman YouTube Downloader.app"
end
