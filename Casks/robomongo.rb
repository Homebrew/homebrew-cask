cask 'robomongo' do
  version '0.9.0-rc7,2b7a8ca'
  sha256 '50cb4499796130e62b37f808790c22599059ec0d1d8d14dbc2094a836665828f'

  url "https://download.robomongo.org/#{version.before_comma}/osx/robomongo-#{version.before_comma}-darwin-x86_64-#{version.after_comma}"
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
