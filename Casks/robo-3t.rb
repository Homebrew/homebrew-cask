cask 'robo-3t' do
  version '1.1.1,c93c6b0'
  sha256 'b536ca099c200d80a4173c4aa2726fa3eaeaef8ddd17968e2326bd8d2ec9f3b4'

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
