cask 'ios-console' do
  version :latest
  sha256 :no_check

  url 'http://downloads.lemonjar.com/iosconsole_latest.zip'
  name 'iOS Console'
  homepage 'http://lemonjar.com/iosconsole/'
  license :gratis

  app 'iOS Console.app'
end
