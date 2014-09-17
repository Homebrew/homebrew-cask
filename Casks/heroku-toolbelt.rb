class HerokuToolbelt < Cask
  version :latest
  sha256 :no_check

  url 'http://assets.heroku.com/heroku-toolbelt/heroku-toolbelt.pkg'
  homepage 'https://toolbelt.heroku.com/'

  pkg 'heroku-toolbelt.pkg'
  uninstall :pkgutil => 'com.heroku.toolbelt',
            :files   => [
                         '/usr/local/heroku',
                         '/usr/bin/heroku'
                        ]
  caveats do
    files_in_usr_local
  end
end
