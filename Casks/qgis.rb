cask 'qgis' do
  version '2.18.9-1'
  sha256 'bc8bd9a63244b89145b0e346c6a242f7055b4b61a14229c9cf54c34e0b8ecb98'

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
