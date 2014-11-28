cask :v1 => 'gdal-framework' do
  version '1.11.1-1'
  sha256 'b5b3a62ead9e2bdff9b85eccf42dbc628f384f89eff33fe150933ddaa841d25b'

  url "http://www.kyngchaos.com/files/software/frameworks/GDAL_Complete-#{version.sub(%r{^(\d+\.\d+).*},'\1')}.dmg"
  homepage 'http://www.kyngchaos.com/software/frameworks'
  license :unknown

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
