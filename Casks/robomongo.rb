cask 'robomongo' do
  version '0.9.0-RC1'
  sha256 'c7d9b9008442225c11678f7b87bf6558853e53aba5e2749ef52ec132970f173b'

  url "https://www.dropbox.com/s/o72l64px3kcocfz/robomongo-#{version}-darwin-852c704.dmg"
  name 'Robomongo'
  homepage 'https://robomongo.org'
  license :gpl

  app 'Robomongo.app'

  uninstall quit: 'Robomongo'

  zap delete: [
                '~/.config/robomongo',
                '~/Library/Saved Application State/Robomongo.savedState',
              ]
end
