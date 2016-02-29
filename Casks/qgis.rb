cask 'qgis' do
  version '2.12.1-1'
  sha256 'c24dcacfbb2cfd59e172c9bc3fed1eef89b1c767c4c41524ac15dfd72e209047'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  name 'QGIS'
  homepage 'http://www.kyngchaos.com/software/qgis'
  license :gpl

  depends_on cask: 'gdal-framework'
  depends_on formula: 'matplotlib'

  pkg 'Install QGIS.pkg'

  uninstall pkgutil: 'org.qgis.qgis-*'

  caveats <<-EOS.undent
    #{token} requires matplotlib in a specific location. Please run the following to finish install:

      sudo ln -s /System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python /Library/Python/2.7/site-packages/matplotlib-override
  EOS
end
