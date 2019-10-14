cask 'progressive-downloader' do
  version '4.6'
  sha256 '12ba2053bc41e4d1c7e453c23f19743a3e2b42de0acf6f9f60637581274ff4f5'

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
