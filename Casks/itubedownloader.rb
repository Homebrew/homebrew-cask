cask 'itubedownloader' do
  version '6.5.3'
  sha256 'd21401c620e72b9e8361f5db1e776ff5e2f2b8e9f805f1a6eb1be387cf9ca39d'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/iTubeDownloader.dmg'
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
