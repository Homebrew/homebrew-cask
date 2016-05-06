cask 'robomongo' do
  version '0.9.0-rc8,c113244'
  sha256 '30f7666e0e25bfd2504e018221fa7686922aeaf116ee61a06a41f24adf3b5e81'

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
