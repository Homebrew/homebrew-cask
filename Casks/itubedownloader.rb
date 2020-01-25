cask 'itubedownloader' do
  version '6.5.11'
  sha256 'ccb01f26a10f5446011f22dc7d679bc85acf40be6b561ce8a2f9bd874505480b'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/iTubeDownloader.dmg'
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
