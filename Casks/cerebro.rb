cask 'cerebro' do
  version '0.3.0'
  sha256 '191f79987bbffbe1686ae5044ee1fe3964688139981de4ff26b4039525451db5'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/v#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: '4017af9f5c5b47224aff0785eb825ac4bb3be799367ef157cef67299a7e18b2f'
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
