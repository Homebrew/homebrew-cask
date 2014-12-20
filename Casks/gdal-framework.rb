cask :v1 => 'gdal-framework' do
  version '1.11.1-1'
  sha256 '5da0f059bdc6e93cc11165eaf66896879b63922c4c37e09eed642dd9c402b5fb'

  url "http://www.kyngchaos.com/files/software/frameworks/GDAL_Complete-#{version.sub(%r{^(\d+\.\d+).*},'\1')}.dmg"
  homepage 'http://www.kyngchaos.com/software/frameworks'
  license :unknown    # todo: improve this machine-generated value

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
