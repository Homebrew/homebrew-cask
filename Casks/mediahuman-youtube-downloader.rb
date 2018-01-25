cask 'mediahuman-youtube-downloader' do
  version :latest
  sha256 :no_check

  url 'https://www.mediahuman.com/download/YouTubeDownloader.dmg'
  name 'MediaHuman YouTube Downloader'
  homepage 'https://www.mediahuman.com/youtube-downloader/'

  app 'MediaHuman YouTube Downloader.app'
end
