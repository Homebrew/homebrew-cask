cask 'progressive-downloader' do
  version '2.11.3'
  sha256 'ca8c5ef946b8c745837d39980b5d8c95d3f15ad28d8f531289163cf6079760b6'

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
