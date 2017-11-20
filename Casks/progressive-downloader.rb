cask 'progressive-downloader' do
  version '3.0.1'
  sha256 'e398318ab642168ca4a25736584fc7cbe53660db2c143e75446807c8587fc36d'

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  name 'Progressive Downloader'
  homepage 'https://www.macpsd.net/'

  depends_on macos: '>= :yosemite'

  app 'Progressive Downloader.app'

  zap trash: [
               '~/Library/Application Support/Progressive Downloader Data',
               '~/Library/Caches/com.PS.PSD',
               '~/Library/Preferences/com.PS.PSD.plist',
             ]
end
