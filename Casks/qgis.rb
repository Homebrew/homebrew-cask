cask :v1 => 'qgis' do
  version '2.10.1-1'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  name 'QGIS'
  homepage 'http://www.kyngchaos.com/software/qgis'
  license :gpl
  pkg 'Install QGIS.pkg'

  uninstall :pkgutil => 'org.qgis.qgis-*'

  depends_on :cask => 'gdal-framework'
  depends_on :cask => 'matplotlib'
end
