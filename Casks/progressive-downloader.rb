cask 'progressive-downloader' do
  version '2.10'
  sha256 '60e7374b334f5637f823d40d199fb4c2f9fb79d178fa365927f8fc4c835a6b45'

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
