cask 'progressive-downloader' do
  version '4.4'
  sha256 '42a697971da31fcdc37ca3c1dc723896e4732cb1c0923a0e1b5628e5fb93c692'

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
