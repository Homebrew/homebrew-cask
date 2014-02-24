class LogitechHarmony < Cask
  url 'http://logitech-sjca.navisite.net/web/ftp/pub/techsupport/harmony/LogitechHarmonyRemoteSoftware7.8.1-OSX.dmg'
  homepage 'http://www.logitech.com/en-us/support/universal-remotes'
  version '7.8.1'
  sha256 '13a100211fb18569563c9d9bbe6c231cbfaa50989df0b471703ec942be2ecafb'
  install 'LogitechRemoteSoftware.pkg'
  uninstall :quit => 'com.logitech.harmony.cappuccino.client.logitech',
            :kext => [
                      'com.RemoteControl.USBLAN.usbpart',
                      'com.Belcarra.iokit.USBLAN_netpart',
                      'com.Belcarra.iokit.USBLAN_usbpart',
                     ],
            :pkgutil => 'com.logitech.harmony.logitechRemoteSoftware.*'
end
