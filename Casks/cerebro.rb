cask 'cerebro' do
  version '0.3.1'
  sha256 '83fe4fa5baae56052eb44ae0a94a93880e2d99e52ad5d2e0d4201ddd2f960889'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/v#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: '868bc9ed6937baa629020e6338898aed949e76c5a367006ffe5112a1f4f9ce91'
  name 'Cerebro'
  homepage 'https://cerebroapp.com/'

  app 'Cerebro.app'

  zap trash: [
               '~/Library/Application Support/Cerebro',
               '~/Library/Preferences/com.cerebroapp.Cerebro.helper.plist',
               '~/Library/Preferences/com.cerebroapp.Cerebro.plist',
               '~/Library/Saved Application State/com.cerebroapp.Cerebro.savedState',
             ]
end
