cask 'robo-3t' do
  version '1.2.1,3e50a65'
  sha256 'd57940bf81ee812bd49d2b9d7468f33c9a9d39004a0867cef5465ffb6a6d3844'

  url "https://download.robomongo.org/#{version.before_comma}/osx/robo3t-#{version.before_comma}-darwin-x86_64-#{version.after_comma}.dmg"
  name 'Robo 3T (formerly Robomongo)'
  homepage 'https://robomongo.org/'

  app 'Robo 3T.app'

  uninstall quit: 'Robo 3T'

  zap trash: [
               '~/.3T/robo-3t/',
               '~/Library/Saved Application State/Robo 3T.savedState',
             ]
end
