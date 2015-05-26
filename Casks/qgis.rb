cask :v1 => 'qgis' do
  version '2.8.1-1'
  sha256 'cd6d3ebd779ee6801807fe4d54a77654ed430dd275f4a084a5d11cf67f1b26c4'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  name 'QGIS'
  homepage 'http://www.kyngchaos.com/software/qgis'
  license :gpl
  pkg 'Install QGIS.pkg'

  uninstall :pkgutil => 'org.qgis.qgis-*'

  depends_on :cask => 'gdal-framework'
  depends_on :cask => 'matplotlib'
end
