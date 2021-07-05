cask "macx-youtube-downloader" do
  version "5.1.8"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-youtube-downloader-free.dmg"
  name "MacX YouTube Downloader"
  desc "Tool to download videos from YouTube"
  homepage "https://www.macxdvd.com/free-youtube-video-downloader-mac/"

  livecheck do
    url "https://download.cnet.com/MacX-YouTube-Downloader/3000-2071_4-76641301.html"
    strategy :page_match
    regex(/"softwareVersion"\s*:\s*"(\d+(?:\.\d+)*)"\s*,/i)
  end

  app "MacX YouTube Downloader.app"
end
