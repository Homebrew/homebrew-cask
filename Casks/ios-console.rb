cask 'ios-console' do
  version :latest
  sha256 :no_check

  url 'https://downloads.lemonjar.com/iosconsole_latest.zip'
  name 'iOS Console'
  homepage 'https://lemonjar.com/iosconsole/'
  license :gratis

  app 'iOS Console.app'
end
