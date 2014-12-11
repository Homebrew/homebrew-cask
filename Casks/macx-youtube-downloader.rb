cask :v1 => 'macx-youtube-downloader' do
  version :latest
  sha256 :no_check

  url 'http://www.macxdvd.com/download/macx-youtube-downloader-free.dmg'
  homepage 'http://www.macxdvd.com/free-youtube-video-downloader-mac'
  license :gratis

  app 'MacX YouTube Downloader.app'
end
