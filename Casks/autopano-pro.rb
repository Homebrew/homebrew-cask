class AutopanoPro < Cask
  version 'latest'
  sha256 :no_check

  url 'http://download.kolor.com/app/stable/macleopard'
  homepage 'http://www.kolor.com/panorama-software-autopano-pro.html'

  pkg 'Autopano Pro 3.6.pkg'
  uninstall :pkgutil => [
                         'com.kolor.pkg.AutopanoPro.3.6',
                         'com.kolor.pkg.Aperture_plugin',
                         'com.kolor.pkg.Bridge_plugin',
                         'com.kolor.pkg.Lightroom_plugin',
                         'com.kolor.pkg.plugin.picasa',
                        ]
end
