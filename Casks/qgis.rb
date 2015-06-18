cask :v1 => 'qgis' do
  version '2.8.2-1'
  sha256 '6a02d2dde377e66d0a05c6bfcff74ab16faec0bd5c2033bbf8cb64bad0b38189'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  name 'QGIS'
  homepage 'http://www.kyngchaos.com/software/qgis'
  license :gpl
  pkg 'Install QGIS.pkg'

  uninstall :pkgutil => 'org.qgis.qgis-*'

  depends_on :cask => 'gdal-framework'
  depends_on :cask => 'matplotlib'
end
