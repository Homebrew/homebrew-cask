cask 'progressive-downloader' do
  version '4.5.5'
  sha256 '021afecd7ec12f00c72109ae618fe099fbfd1da804be23b01280db8da6cd706f'

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
