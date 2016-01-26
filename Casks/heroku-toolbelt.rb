cask 'heroku-toolbelt' do
  version :latest
  sha256 :no_check

  url 'http://assets.heroku.com/heroku-toolbelt/heroku-toolbelt.pkg'
  name 'Heroku Toolbelt'
  homepage 'https://toolbelt.heroku.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'heroku-toolbelt.pkg'

  uninstall pkgutil: 'com.heroku.toolbelt',
            delete:  [
                       '/usr/local/heroku',
                       '/usr/bin/heroku',
                       '/usr/local/foreman',
                       '/usr/bin/foreman',
                     ]

  zap       delete: '~/.heroku'

  caveats do
    files_in_usr_local
  end
end
