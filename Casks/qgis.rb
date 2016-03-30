cask 'qgis' do
  version '2.14.0-1'
  sha256 '0a37531ae4dcf966752d728885b8dc84f45b89e296c89a223e1826f49394f88e'

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
