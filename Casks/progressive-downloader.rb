cask 'progressive-downloader' do
  version '2.8.3'
  sha256 '03ad020964fe6fd9d809ec476861e2f06dda8134941bd7216baee4100b1e6298'

  url "http://www.macpsd.net/update/#{version}/PSD.dmg"
  name 'Progressive Downloader'
  homepage 'https://www.macpsd.net/'

  depends_on macos: '>= :mavericks'

  app 'Progressive Downloader.app'

  zap delete: [
                '~/Library/Preferences/com.PS.PSD.plist',
                '~/Library/Application Support/Progressive Downloader Data',
                '~/Library/Caches/com.PS.PSD',
              ]
end
