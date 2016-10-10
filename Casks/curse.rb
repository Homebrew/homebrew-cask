cask 'curse' do
  version :latest
  sha256 :no_check

  # curseapp.net was verified as official when first introduced to the cask
  url 'https://updates.curseapp.net/osx/Curse.dmg'
  name 'Curse'
  homepage 'https://www.curse.com'

  auto_updates true

  app 'Curse.app'

  zap delete: [
                '~/Library/Application Support/Curse',
                '~/Library/Curse',
                '~/Library/Saved Application State/com.curse.curseclient.savedState',
                '~/Library/Caches/com.curse.radium',
                '~/Library/Caches/curse',
                '~/Library/Preferences/com.curse.curseclient.plist',
              ]
end
