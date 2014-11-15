cask :v1 => 'heroku-toolbelt' do
  version :latest
  sha256 :no_check

  url 'http://assets.heroku.com/heroku-toolbelt/heroku-toolbelt.pkg'
  homepage 'https://toolbelt.heroku.com/'
  license :unknown

  pkg 'heroku-toolbelt.pkg'
  uninstall :pkgutil => 'com.heroku.toolbelt',
            :delete  => [
                         '/usr/local/heroku',
                         '/usr/bin/heroku',
                        ]
  zap       :delete => '~/.heroku'

  caveats do
    files_in_usr_local
  end
end
