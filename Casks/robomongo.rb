cask 'robomongo' do
  version '1.0.0-rc1,496f5c2'
  sha256 '7b2e0ee1effb36d548945fe668c2e584c1e2dde1e3b7786f2ee134dc419ed1ef'

  url "https://download.robomongo.org/#{version.before_comma}/osx/robomongo-#{version.before_comma}-darwin-x86_64-#{version.after_comma}.dmg"
  name 'Robomongo'
  homepage 'https://robomongo.org/'

  app 'Robomongo.app'

  uninstall quit: 'Robomongo'

  zap delete: [
                '~/.config/robomongo',
                '~/Library/Saved Application State/Robomongo.savedState',
              ]
end
