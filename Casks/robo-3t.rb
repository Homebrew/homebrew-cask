cask 'robo-3t' do
  version '1.3.1,7419c40'
  sha256 'a853ab5f61ee839540a0f43cfcd545c8115355d639b6d038a62ddf08c94a41b9'

  url "https://download-test.robomongo.org/mac/robo3t-#{version.before_comma}-darwin-x86_64-#{version.after_comma}.dmg"
  appcast 'https://robomongo.org/download'
  name 'Robo 3T (formerly Robomongo)'
  homepage 'https://robomongo.org/'

  app 'Robo 3T.app'

  uninstall quit: 'Robo 3T'

  zap trash: [
               '~/.3T/robo-3t/',
               '~/Library/Saved Application State/Robo 3T.savedState',
             ]
end
