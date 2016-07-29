cask 'robomongo' do
  version '0.9.0-rc9,0bb5668'
  sha256 'bffbbc16971af6caeff81c6a3f132dc3ee6be03b9766449e1b9b78847edc3a2b'

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
