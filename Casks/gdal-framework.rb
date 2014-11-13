cask :v1 => 'gdal-framework' do
  version '1.11'
  sha256 'd8aa6d59236a75519e94a764dfc71d3122c8e88fa4f99072046c3a8a0bfb4124'

  url "http://www.kyngchaos.com/files/software/frameworks/GDAL_Complete-#{version}.dmg"
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
