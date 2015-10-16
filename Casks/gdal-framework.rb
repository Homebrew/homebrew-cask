cask :v1 => 'gdal-framework' do
  version '1.11.1-1'
  sha256 :no_check    # upstream package is updated in-place

  url "http://www.kyngchaos.com/files/software/frameworks/GDAL_Complete-#{version.sub(%r{^(\d+\.\d+).*},'\1')}.dmg"
  name 'GDAL Complete'
  homepage 'http://www.kyngchaos.com/software/frameworks'
  license :oss

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

  caveats <<-EOS.undent
    #{token} requires Java 6+, you can install the latest Java using
      brew cask install java
  EOS
end
