cask "macx-youtube-downloader" do
  version "5.1.8,20210227"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-youtube-downloader-free.dmg"
  name "MacX YouTube Downloader"
  desc "Tool to download videos from YouTube"
  homepage "https://www.macxdvd.com/free-youtube-video-downloader-mac/"

  livecheck do
    skip "unversioned URL"
  end

  app "MacX YouTube Downloader.app"
end
