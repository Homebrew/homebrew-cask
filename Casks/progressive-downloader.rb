cask 'progressive-downloader' do
  version '3.3'
  sha256 'b40ada6959d83ce0eab4961ecb207147b72f5a8215db5c74fc600e1371ccb34d'

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
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
