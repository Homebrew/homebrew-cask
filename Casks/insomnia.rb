cask 'insomnia' do
  version '4.2.14'
  sha256 '24b26849ad84ca452a969d6ae07f44a55f2dcc48b5fba032c1967ae3e073d4d9'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'b42ed75451490c58029e868535a22c773d8f0f57d4115e26ebe18cc4e16761ea'
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
