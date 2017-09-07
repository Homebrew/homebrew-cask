cask 'progressive-downloader' do
  version '2.11.6'
  sha256 '13275cd1ba2d6836229da48e9a7158c3eb90b3989edad75fed79c0e93f7bf2ac'

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  name 'Progressive Downloader'
  homepage 'https://www.macpsd.net/'

  depends_on macos: '>= :mavericks'

  app 'Progressive Downloader.app'

  zap delete: '~/Library/Caches/com.PS.PSD',
      trash:  [
                '~/Library/Application Support/Progressive Downloader Data',
                '~/Library/Preferences/com.PS.PSD.plist',
              ]
end
