cask :v1 => 'qgis' do
  version '2.10.1-1'
  sha256 '54bfe4db98f4e34b883121ad9a3c92ec22cd10d7a0a90c40815d6ecce178876b'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  name 'QGIS'
  homepage 'http://www.kyngchaos.com/software/qgis'
  license :gpl
  pkg 'Install QGIS.pkg'

  uninstall :pkgutil => 'org.qgis.qgis-*'

  depends_on :cask => 'gdal-framework'
  depends_on :formula => 'matplotlib'
end
