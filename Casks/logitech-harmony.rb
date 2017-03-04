cask 'logitech-harmony' do
  version '7.8.1'
  sha256 '13a100211fb18569563c9d9bbe6c231cbfaa50989df0b471703ec942be2ecafb'

  url "https://cdn-cx-images.dynamite.myharmony.com/software/LogitechHarmonyRemoteSoftware#{version}-OSX.dmg"
  name 'Logitech Harmony Remote Software'
  homepage 'https://www.myharmony.com/'

  pkg 'LogitechRemoteSoftware.pkg'

  postflight do
    # Replace the hard-coded 1.4 requirement with an equally hard-coded 1.6 requirement
    system_command '/usr/bin/sed',
                   args: [
                           '-E',
                           '-i',
                           '.bak',
                           '-e',
                           's|<string>1\.4\*</string>|<string>1.6*</string>|',
                           '/Applications/Logitech Harmony Remote Software.app/Contents/Info.plist',
                         ]
  end

  uninstall quit:    'com.logitech.harmony.cappuccino.client.logitech',
            kext:    [
                       'com.RemoteControl.USBLAN.usbpart',
                       'com.Belcarra.iokit.USBLAN_netpart',
                       'com.Belcarra.iokit.USBLAN_usbpart',
                     ],
            pkgutil: 'com.logitech.harmony.logitechRemoteSoftware.*'

  caveats do
    depends_on_java('6')
  end
end
