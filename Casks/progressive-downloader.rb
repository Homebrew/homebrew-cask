cask 'progressive-downloader' do
  version '2.11.1'
  sha256 '97014a3c312ec58b44b6fae447987e0418a31572dbc348c64dc28a514dc85a73'

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
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
