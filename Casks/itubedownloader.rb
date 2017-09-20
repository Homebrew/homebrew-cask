cask 'itubedownloader' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/iTubeDownloader.dmg'
  name 'iTubeDownloader'
  homepage 'http://alphasoftware.co/'

  app 'iTubeDownloader.app'
end
