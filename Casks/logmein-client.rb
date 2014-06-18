class LogmeinClient < Cask
  url 'https://secure.logmein.com/welcome/labs/LogMeInIgnition.dmg'
  homepage 'https://secure.logmein.com/products/pro/learnmore/desktopapp.aspx'
  version 'latest'
  sha256 :no_check
  link 'LogMeInIgnition.app', :target => 'LogMeIn Client.app'
end
