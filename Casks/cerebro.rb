cask 'cerebro' do
  version '0.2.8'
  sha256 'c54a6e6aba93d9573551e3c09cd24589ec8e974ec1d9e2bca7a28eaeacd20408'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: '20817f476926e96813bd378c7985cc19fa566a1019beb4d653b0c740a0149230'
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
