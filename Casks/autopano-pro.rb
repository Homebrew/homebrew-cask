cask 'autopano-pro' do
  version '4.2.3'
  sha256 '07fb35d00fa7f8926e00ede0031ef1c56a6e0e89d1f3d7485b4fa00da765fb99'

  url 'http://download.kolor.com/app/stable/macleopard'
  name 'Autopano Pro'
  homepage 'http://www.kolor.com/panorama-software-autopano-pro.html'

  pkg "Autopano Pro #{version.major_minor}.pkg"

  uninstall pkgutil: [
                       'com.kolor.pkg.AutopanoPro.*',
                       'com.kolor.pkg.Aperture_plugin',
                       'com.kolor.pkg.Bridge_plugin',
                       'com.kolor.pkg.Lightroom_plugin',
                       'com.kolor.pkg.plugin.picasa',
                     ]
end
