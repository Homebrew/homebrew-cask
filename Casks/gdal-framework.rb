class GdalFramework < Cask
  url 'http://www.kyngchaos.com/files/software/frameworks/GDAL_Complete-1.11.dmg'
  homepage 'http://www.kyngchaos.com/software/frameworks'
  version '1.11'
  sha256 '8611b80e9e0f2a1ef87ff11429418fbf5996efc6a8041a3e096c3408dcceaf14'
  pkg 'GDAL Complete.pkg'
  pkg 'Numpy.pkg'
  uninstall :pkgutil  => [
                            'org.maptools.proj-framework-snow',
                            'org.sqlite.sqlite3b-framework-snow',
                            'com.kyngchaos.UnixImageIO-framework-E-lion',
                            'org.gdal.gdal111-framework-lion',
                            'net.refractions.geos-framework-snow',
                            'org.scipy.numpy-lion',
                            'org.scipy.numpy-snow'
                          ]
end
