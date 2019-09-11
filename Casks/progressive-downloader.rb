cask 'progressive-downloader' do
  version '4.5.6'
  sha256 '447f89a338b37c8e6b8acb61d782faeb892409f6184b9deea0c1a784e4237b7b'

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  appcast 'https://www.macpsd.net/'
  name 'Progressive Downloader'
  homepage 'https://www.macpsd.net/'

  depends_on macos: '>= :yosemite'

  app 'Progressive Downloader.app'

  zap trash: [
               '~/Library/Application Support/Progressive Downloader Data',
               '~/Library/Caches/com.PS.Downloader',
               '~/Library/Caches/com.PS.PSD',
               '~/Library/Preferences/com.PS.PSD.plist',
             ]
end
