class LogmeinClient < Cask
  version 'latest'
  sha256 :no_check

  url 'https://secure.logmein.com/welcome/labs/LogMeInIgnition.dmg'
  homepage 'https://secure.logmein.com/products/pro/learnmore/desktopapp.aspx'

  link 'LogMeInIgnition.app', :target => 'LogMeIn Client.app'
end
