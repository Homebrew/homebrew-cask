cask 'qgis' do
  version '2.14.3-1'
  sha256 '844029c1e92974722d7b4e58e78aa4df041d045a161945cc7a37b38d692d4e55'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  name 'QGIS'
  homepage 'http://www.kyngchaos.com/software/qgis'
  license :gpl

  depends_on cask: 'gdal-framework'
  depends_on formula: 'matplotlib'

  pkg '4 Install QGIS.pkg'

  uninstall pkgutil: 'org.qgis.qgis-*'

  caveats <<-EOS.undent
    #{token} requires matplotlib in a specific location. Please run the following to finish install:

      sudo ln -s /System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python /Library/Python/2.7/site-packages/matplotlib-override
  EOS
end
