cask 'cerebro' do
  version '0.2.8'
  sha256 'c54a6e6aba93d9573551e3c09cd24589ec8e974ec1d9e2bca7a28eaeacd20408'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/v#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: '64da05a53fdbb1da2ee4530039fd90e0712da764c2c9d4abfee1f65971f728aa'
  name 'Cerebro'
  homepage 'https://cerebroapp.com/'

  app 'Cerebro.app'

  zap delete: [
                '~/Library/Application Support/Cerebro',
                '~/Library/Preferences/com.cerebroapp.Cerebro.helper.plist',
                '~/Library/Preferences/com.cerebroapp.Cerebro.plist',
                '~/Library/Saved Application State/com.cerebroapp.Cerebro.savedState',
              ]
end
