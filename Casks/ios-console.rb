cask 'ios-console' do
  version :latest
  sha256 :no_check

  url 'https://downloads.lemonjar.com/iosconsole_latest.zip'
  appcast 'https://updates.lemonjar.com/iosconsole.xml'
  name 'iOS Console'
  homepage 'https://lemonjar.com/iosconsole/'

  app 'iOS Console.app'
end
