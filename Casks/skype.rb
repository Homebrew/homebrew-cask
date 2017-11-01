cask 'skype' do
  version '8.9.0.1'
  sha256 '3c8219f14d71542e2d330dcae3c37cdcf7af4d36418c7751a7770b6d3ffa4ff5'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype'
  homepage 'https://www.skype.com/'

  auto_updates true

  app 'Skype.app'

  zap delete: [
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.skype.skype',
                '~/Library/Caches/com.skype.skype',
                '~/Library/Saved Application State/com.skype.skype.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Skype',
                '~/Library/Preferences/com.skype.skype.plist',
                '~/Library/Preferences/com.skype.skypewifi.plist',
              ]
end
