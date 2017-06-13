cask 'skype' do
  version :latest
  sha256 :no_check

  url 'https://www.skype.com/go/getskype-macosx.dmg'
  name 'Skype'
  homepage 'https://www.skype.com/'

  auto_updates true

  app 'Skype.app'

  zap delete: [
                '~/Library/Application Support/Skype',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.skype.skype',
                '~/Library/Caches/com.skype.skype',
                '~/Library/Preferences/com.skype.skype.plist',
                '~/Library/Preferences/com.skype.skypewifi.plist',
                '~/Library/Saved Application State/com.skype.skype.savedState',
              ]
end
