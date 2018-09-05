cask 'autopano-pro' do
  version '4.4.1'
  sha256 '6cd18f7be14e12e3bec9c9b409c5e3d0e2d095d291dfd1e75923589f0ac052b1'

  url 'http://download.kolor.com/app/stable/mac'
  name 'Autopano Pro'
  homepage 'https://www.kolor.com/autopano/'

  pkg "Autopano Pro #{version.major_minor}.pkg"

  uninstall pkgutil: [
                       'com.kolor.pkg.AutopanoPro.*',
                       'com.kolor.pkg.Aperture_plugin',
                       'com.kolor.pkg.Bridge_plugin',
                       'com.kolor.pkg.Lightroom_plugin',
                       'com.kolor.pkg.plugin.picasa',
                     ]
end
