class Qgis < Cask
  version '2.2.0-10'
  sha256 '00ddf8511c11664600b680d569153a040bfd7579b40ccab53659d23999d4ad43'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  homepage 'http://www.kyngchaos.com/software/qgis'
  pkg 'Install QGIS.pkg'
  uninstall :pkgutil => 'org.qgis.qgis-*'
  caveats do
    <<-EOS.undent
    #{@cask} requires the GDAL framework and Matplotlib to be installed first,
    otherwise the installation will fail. In case of issues, try installing it

        brew cask install gdal-framework matplotlib

    and then reinstall QGIS

        brew cask uninstall qgis
        brew cask install qgis
    EOS
  end
end
