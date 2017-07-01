cask 'insomnia' do
  version '5.5.2'
  sha256 '8f3c86dfd9ef7c9b7529086f6a2c71239733663235f17ff5d13ebcdcc7c1900a'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'f1ed8539d07a217025ddd48350915249598a3862bcbc1d725855a910896a448b'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  auto_updates true

  app 'Insomnia.app'

  zap delete: [
                '~/Library/Application Support/Insomnia',
                '~/Library/Caches/com.insomnia.app',
                '~/Library/Preferences/com.insomnia.app.helper.plist',
                '~/Library/Preferences/com.insomnia.app.plist',
                '~/Library/Saved Application State/com.insomnia.app.savedState',
              ]
end
