cask 'autopano-pro' do
  version '4.2.3'
  sha256 :no_check

  url 'http://download.kolor.com/app/stable/macleopard'
  name 'Autopano Pro'
  homepage 'http://www.kolor.com/panorama-software-autopano-pro.html'
  license :commercial

  pkg "Autopano Pro #{version.major_minor}.pkg"

  uninstall pkgutil: [
                       'com.kolor.pkg.AutopanoPro.*',
                       'com.kolor.pkg.Aperture_plugin',
                       'com.kolor.pkg.Bridge_plugin',
                       'com.kolor.pkg.Lightroom_plugin',
                       'com.kolor.pkg.plugin.picasa',
                     ]
end
