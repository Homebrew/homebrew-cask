cask 'freeter' do
  version :latest
  sha256 :no_check

  url 'https://freeter.io/download/Freeter.dmg'
  name 'Freeter'
  homepage 'https://freeter.io/'

  app 'Freeter.app'

  zap delete: [
                '~/Library/Application Support/freeter',
                '~/Library/Preferences/io.freeter.helper.plist',
                '~/Library/Preferences/io.freeter.plist',
                '~/Library/Saved Application State/io.freeter.savedState',
              ]
end
