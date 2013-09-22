class HerokuToolbelt < Cask
  url 'http://assets.heroku.com/heroku-toolbelt/heroku-toolbelt.pkg'
  homepage 'https://toolbelt.heroku.com/'
  version 'latest'
  no_checksum
  install 'heroku-toolbelt.pkg'
  uninstall :pkgutil => 'com.heroku.toolbelt', :files => [
    '/usr/local/heroku',
    '/usr/bin/heroku'
  ]
end
