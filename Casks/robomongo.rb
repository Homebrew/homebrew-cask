cask 'robomongo' do
  version '0.9.0-rc10,33c89ea'
  sha256 '6532d558f898ded4556fa45c4fc471af520c179180484f44d2cc88572fb88926'

  url "https://download.robomongo.org/#{version.before_comma}/osx/robomongo-#{version.before_comma}-darwin-x86_64-#{version.after_comma}.dmg"
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
