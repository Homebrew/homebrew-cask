cask 'logmein-client' do
  version :latest
  sha256 :no_check

  url 'https://secure.logmein.com/LogMeInClientMac.dmg'
  name 'LogMeIn Client'
  homepage 'https://secure.logmein.com/products/pro/learnmore/desktopapp.aspx'

  app 'LogMeIn Client.app'
end
