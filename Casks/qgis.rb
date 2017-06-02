cask 'qgis' do
  version '2.18.7-1'
  sha256 '5cbdf6b5ec0c3d9bbf50ed5ae438f08273d6219a6357ebd97ccfa7cc28d3fcab'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  name 'QGIS'
  homepage 'http://www.kyngchaos.com/software/qgis'

  depends_on cask: 'gdal-framework'
  depends_on formula: 'homebrew/science/matplotlib'

  pkg '4 Install QGIS.pkg'

  uninstall pkgutil: 'org.qgis.qgis-*'

  caveats <<-EOS.undent
    #{token} requires matplotlib in a specific location. Please run the following to finish install:

      sudo ln -s /System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python /Library/Python/2.7/site-packages/matplotlib-override
  EOS
end
