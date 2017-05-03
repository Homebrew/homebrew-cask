cask 'insomnia' do
  version '5.0.12'
  sha256 '7f2dbc9b5c2537f056bcb4297275477179ec2cbc4164782e27c9d603d98b9af6'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'd616fbece901e172537b7637c898a1208e0fc67bbd7b82029fe6da6d3577dd32'
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
