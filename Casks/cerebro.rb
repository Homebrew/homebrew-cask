cask 'cerebro' do
  version '0.3.0'
  sha256 '191f79987bbffbe1686ae5044ee1fe3964688139981de4ff26b4039525451db5'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/v#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: '5f4e78c193e1046b523af6747c673ed3e67b988c1532695245a1ef6a8bc72177'
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
