class LogitechHarmony < Cask
  url 'http://logitech-sjca.navisite.net/web/ftp/pub/techsupport/harmony/LogitechHarmonyRemoteSoftware7.8.1-OSX.dmg'
  homepage 'http://www.logitech.com/en-us/support/universal-remotes'
  version '7.8.1'
  sha1 '915c735154df58213f77a9196bfdeac6f95c76aa'
  install 'LogitechRemoteSoftware.pkg'
  uninstall :quit => 'com.logitech.harmony.cappuccino.client.logitech',
            :kext => [
                      'com.RemoteControl.USBLAN.usbpart',
                      'com.Belcarra.iokit.USBLAN_netpart',
                      'com.Belcarra.iokit.USBLAN_usbpart',
                     ],
            :pkgutil => 'com.logitech.harmony.logitechRemoteSoftware.*'
end
