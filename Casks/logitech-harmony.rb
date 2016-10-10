cask 'logitech-harmony' do
  version '7.8.1'
  sha256 '13a100211fb18569563c9d9bbe6c231cbfaa50989df0b471703ec942be2ecafb'

  url "https://cdn-cx-images.dynamite.myharmony.com/software/LogitechHarmonyRemoteSoftware#{version}-OSX.dmg"
  name 'Logitech Harmony Remote Software'
  homepage 'https://www.myharmony.com/'

  pkg 'LogitechRemoteSoftware.pkg'

  uninstall quit:    'com.logitech.harmony.cappuccino.client.logitech',
            kext:    [
                       'com.RemoteControl.USBLAN.usbpart',
                       'com.Belcarra.iokit.USBLAN_netpart',
                       'com.Belcarra.iokit.USBLAN_usbpart',
                     ],
            pkgutil: 'com.logitech.harmony.logitechRemoteSoftware.*'
end
