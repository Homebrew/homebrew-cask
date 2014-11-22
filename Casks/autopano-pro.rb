cask :v1 => 'autopano-pro' do
  version '3.6'
  sha256 '8bf8840b9d3126c3f64dcef6a9ccf4115c6f23779f563b6cfa4c7a8f663cc088'

  url 'http://download.kolor.com/app/stable/macleopard'
  homepage 'http://www.kolor.com/panorama-software-autopano-pro.html'
  license :commercial

  pkg "Autopano Pro #{version}.pkg"

  uninstall :pkgutil => [
                         'com.kolor.pkg.AutopanoPro.*',
                         'com.kolor.pkg.Aperture_plugin',
                         'com.kolor.pkg.Bridge_plugin',
                         'com.kolor.pkg.Lightroom_plugin',
                         'com.kolor.pkg.plugin.picasa',
                        ]
end
