cask "macx-youtube-downloader" do
  version "5.2.3,20221125"
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
