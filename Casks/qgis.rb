class Qgis < Cask
  version '2.2.0-10'
  sha256 '00ddf8511c11664600b680d569153a040bfd7579b40ccab53659d23999d4ad43'

  url 'http://www.kyngchaos.com/files/software/qgis/QGIS-2.2.0-10.dmg'
  homepage 'http://www.kyngchaos.com/software/qgis'
  install 'Install QGIS.pkg'
  uninstall :pkgutil => 'org.qgis.qgis-2.2'
  caveats do
    puts 'This app requires the GDAL framework and Matplotlib casks to be installed'
  end
end
