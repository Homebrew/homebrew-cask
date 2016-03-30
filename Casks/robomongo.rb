cask 'robomongo' do
  version '0.8.5'
  sha256 'fdf9fb0bb94accf92217de6424a1760cf4ed4ab1dbda929b7892b5ddde4074e0'

  url "https://download.robomongo.org/#{version}/osx/Robomongo-#{version}-x86_64.dmg"
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
