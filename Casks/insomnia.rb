cask 'insomnia' do
  version '4.2.3'
  sha256 'e6cb61a7b2a27f967cb99ae4220239a5acc92fde1bb5a63583d16df8f9d781ea'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '4770bf17795f5e29e38164ef4149f3db27a9c40f47d0179738de0e65b060f1ea'
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
