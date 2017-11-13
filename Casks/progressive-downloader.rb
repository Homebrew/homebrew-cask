cask 'progressive-downloader' do
  version '3.0'
  sha256 '45e752c318f7d118b9f66bbb8c58972cc135bea4e9374a2c6cd9e45c92fc8f94'

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  name 'Progressive Downloader'
  homepage 'https://www.macpsd.net/'

  depends_on macos: '>= :yosemite'

  app 'Progressive Downloader.app'

  zap delete: '~/Library/Caches/com.PS.PSD',
      trash:  [
                '~/Library/Application Support/Progressive Downloader Data',
                '~/Library/Preferences/com.PS.PSD.plist',
              ]
end
