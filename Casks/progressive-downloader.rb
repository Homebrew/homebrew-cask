cask 'progressive-downloader' do
  version '2.8'
  sha256 '3280d88fa94ec4c68f4a8701d3ea1e52373f6626575862d11911ab0a9cb7db82'

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
