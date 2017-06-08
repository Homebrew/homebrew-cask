cask 'skype' do
  version '7.54.409'
  sha256 '83338e7b6ef06433343a69228c6d611902274fb82134b707517ef6fbd90f6048'

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
