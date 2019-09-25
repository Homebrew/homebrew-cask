cask 'samsung-dex' do
  version '1.0.0.54'
  sha256 'e6541ed3dc7aea4eb5534b92207812c1ec7b1bf4e312a504be134a30e60dbb00'

  url 'http://downloadcenter.samsung.com/content/SW/201909/20190911142048616/SamsungDeXSetup.dmg'
  name 'Samsung DeX'
  homepage 'https://www.samsung.com/global/galaxy/apps/samsung-dex/'

  pkg 'Install Samsung DeX.pkg'

  uninstall script: {
                      executable: "#{staged_path}/Uninstall.app/Contents/MacOS/Uninstall",
                      sudo:       true,
                    }

  caveats do
    kext
    reboot
  end
end
