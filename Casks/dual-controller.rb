cask 'dual-controller' do
  version '2.59'
  sha256 'fd153aa9ba241646359bab316c614fd2408fd88abd4743b8252b4e08daee544a'

  url 'http://gscs-b2c.lge.com/downloadFile?fileId=tZUjIlaZXB4k12pcp3PA'
  name 'LG Dual Controller'
  homepage 'https://www.lg.com/us/support/software-firmware-drivers'

  pkg 'DC2.59_MultiSubPC_PKG_20190121.pkg'

  uninstall pkgutil: [
                       'com.lge.dualController.unInstall.pkg',
                       'com.lge.dualController.LGSmHaL_v1.4_151215.pkg',
                       'com.lge.dualController.LG_Display11_Light.pkg',
                       'com.lge.dualController.LGSmHaSB.pkg',
                       'com.lge.dualController.LGSmHaR.pkg',
                       'com.lge.dualController.Directories.pkg',
                       'com.lge.dualController.DualController.pkg',
                       'com.lge.dualcontrol.DualControl_Library.pkg',
                     ]
end
