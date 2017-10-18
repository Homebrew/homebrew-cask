cask 'qgis' do
  version '2.18.13-1'
  sha256 '529835ee80f24fa05648402481aed4c0fd691ff5db60dda10bbc51e8db494624'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  name 'QGIS'
  homepage 'http://www.kyngchaos.com/software/qgis'

  depends_on cask: 'gdal-framework'
  depends_on formula: 'homebrew/science/matplotlib'

  pkg '4 Install QGIS.pkg'

  uninstall pkgutil: 'org.qgis.qgis-*'

  caveats <<~EOS
    #{token} requires matplotlib in a specific location. Please run the following to finish install:

      sudo ln -s /System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python /Library/Python/2.7/site-packages/matplotlib-override
  EOS
end
