cask 'cerebro' do
  version '0.3.2'
  sha256 'a4df90aca836d6110ac65cd5c1427fb9121f93bdd36ed8527816befbda3dc833'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/v#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: '0e51537bf31af3bff4797bbaed69cc3df6c2a68c99a5440f1e287ed59939d704'
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
