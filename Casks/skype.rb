cask 'skype' do
  version '7.58'
  sha256 '14dfca8f79f35b4c994c11d3a514b2d7537640803c72d1b18dc8631e80db515a'

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
