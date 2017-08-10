cask 'progressive-downloader' do
  version '2.11.2'
  sha256 'bf8aad8a2b8c71784f43f089d01aa49707cf40e1695e92dfafcdf1a3bda86d82'

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
