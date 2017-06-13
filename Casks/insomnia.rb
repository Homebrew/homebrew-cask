cask 'insomnia' do
  version '5.2.0'
  sha256 'db8bb86c9468b34e7216be6387d46a85e22ef35365a9996616b03499cec0c014'

  url 'https://builds.insomnia.rest/downloads/mac/latest'
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '305e888c6e5c6b1ff1fb975bfc3d0933d73be17e1e4696827885daaf7fad7f69'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'

  zap delete: [
                '~/Library/Application Support/Insomnia',
                '~/Library/Caches/com.insomnia.app',
                '~/Library/Preferences/com.insomnia.app.helper.plist',
                '~/Library/Preferences/com.insomnia.app.plist',
                '~/Library/Saved Application State/com.insomnia.app.savedState',
              ]
end
