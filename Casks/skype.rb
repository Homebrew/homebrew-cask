cask 'skype' do
  version '8.10.0.4'
  sha256 '6677cc8c4250e169126b647382b22df196d43158a3ed2a20a98365f43d23b165'

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
