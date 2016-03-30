cask 'logmein-client' do
  version :latest
  sha256 :no_check

  url 'https://secure.logmein.com/welcome/labs/LogMeInIgnition.dmg'
  name 'LogMeIn Client'
  homepage 'https://secure.logmein.com/products/pro/learnmore/desktopapp.aspx'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LogMeIn Client.app'
end
