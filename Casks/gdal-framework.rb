cask :v1 => 'gdal-framework' do
  version '1.11.1-1'
  sha256 :no_check    # upstream package is updated in-place

  url "http://www.kyngchaos.com/files/software/frameworks/GDAL_Complete-#{version.sub(%r{^(\d+\.\d+).*},'\1')}.dmg"
  homepage 'http://www.kyngchaos.com/software/frameworks'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
