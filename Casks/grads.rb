cask 'grads' do
  version '2.1.0'
  sha256 '3ec6916ca126b17b36cffaeffedd5dd2e7a8f0e6c6b768e8c99640e972f9c7ff'

  url "ftp://cola.gmu.edu/grads/#{version.major_minor}/grads-#{version}-bin-darwin13.4.tar.gz"
  name 'Grid Analysis and Display System'
  homepage 'http://cola.gmu.edu/grads/grads.php'

  binary 'bin/bufrscan'
  binary 'bin/grads'
  binary 'bin/grib2scan'
  binary 'bin/gribmap'
  binary 'bin/gribscan'
  binary 'bin/stnmap'
  binary 'bin/wgrib'

  caveats <<-EOS.undent
    In order to use the GrADS tools, you will need
    the GrADS fonts and maps data sets, and may need
    to set some environmental variables.

    See the documentation at:

      #{staged_path}/bin/INSTALL
  EOS
end
