cask 'gdal-framework' do
  version '2.1'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://www.kyngchaos.com/files/software/frameworks/GDAL_Complete-#{version.sub(%r{^(\d+\.\d+).*}, '\1')}.dmg"
  name 'GDAL Complete'
  homepage 'http://www.kyngchaos.com/software/frameworks'

  pkg 'GDAL Complete.pkg'
  pkg 'Numpy.pkg'

  uninstall pkgutil: [
                       'org.maptools.proj-framework-mtlion',
                       'org.sqlite.sqlite3c-framework-mtlion',
                       'com.kyngchaos.UnixImageIO-framework-E-mtlion',
                       'org.gdal.gdal21-framework-mtlion',
                       'net.refractions.geos-framework-mtlion',
                       'org.scipy.numpy-lion',
                     ]

  caveats do
    depends_on_java
  end
end
