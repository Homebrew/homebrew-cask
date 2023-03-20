cask "macx-youtube-downloader" do
  version "5.2.5,20230210"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-youtube-downloader-free.dmg"
  name "MacX YouTube Downloader"
  desc "Tool to download videos from YouTube"
  homepage "https://www.macxdvd.com/free-youtube-video-downloader-mac/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "MacX YouTube Downloader.app"
end
