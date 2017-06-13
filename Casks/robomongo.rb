cask 'robomongo' do
  version '1.0.0,89f24ea'
  sha256 'd664aad1ed2aee2f3b108f545e91df9024fce7827816439c6b8401c2de8c4ed0'

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
