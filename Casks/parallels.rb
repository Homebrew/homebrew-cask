class Parallels < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.parallels.com/directdownload/pd9'
  homepage 'http://www.parallels.com/products/desktop/'

  install 'Install.mpkg'
  uninstall :pkgutil => 'com.parallels.pkg.virtualization.bundle',
            :kext    => [
                         'com.parallels.kext.usbconnect',
                         'com.parallels.kext.hypervisor',
                         'com.parallels.kext.hidhook',
                         'com.parallels.kext.netbridge',
                         'com.parallels.kext.vnic',
                        ]
end
