class Parallels < Cask
  version '9.0.24237.1028877'
  sha256 'da71645ff1f0076ab5b2f8fa5eefb63bcd921e5f52161fd4dd85e6fb19ae2c57'

  url 'http://download.parallels.com/desktop/v9/update2.hotfix2/ParallelsDesktop-9.0.24237.1028877.dmg'
  homepage 'http://www.parallels.com/products/desktop/'

  pkg 'Install.mpkg'
  uninstall :pkgutil => 'com.parallels.pkg.virtualization.bundle',
            :kext    => [
                         'com.parallels.kext.usbconnect',
                         'com.parallels.kext.hypervisor',
                         'com.parallels.kext.hidhook',
                         'com.parallels.kext.netbridge',
                         'com.parallels.kext.vnic',
                        ]
end
