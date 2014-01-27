class LogitechHarmony < Cask
  url 'http://logitech-sjca.navisite.net/web/ftp/pub/techsupport/harmony/LogitechHarmonyRemoteSoftware7.8.1-OSX.dmg'
  homepage 'http://http://www.logitech.com/'
  version '7.8.1'
  sha1 '915c735154df58213f77a9196bfdeac6f95c76aa'
  install 'LogitechRemoteSoftware.pkg'
  uninstall 'Uninstall Logitech Harmony Remote Software.app'
end
