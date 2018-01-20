cask 'grads' do
  version '2.1.0'
  sha256 '3ec6916ca126b17b36cffaeffedd5dd2e7a8f0e6c6b768e8c99640e972f9c7ff'

  url "ftp://cola.gmu.edu/grads/#{version.major_minor}/grads-#{version}-bin-darwin13.4.tar.gz"
  name 'Grid Analysis and Display System'
  homepage 'http://cola.gmu.edu/grads/grads.php'

  binary "grads-#{version}/bin/bufrscan"
  binary "grads-#{version}/bin/grads"
  binary "grads-#{version}/bin/grib2scan"
  binary "grads-#{version}/bin/gribmap"
  binary "grads-#{version}/bin/gribscan"
  binary "grads-#{version}/bin/stnmap"
  binary "grads-#{version}/bin/wgrib"

  caveats <<~EOS
    In order to use the GrADS tools, you will need
    the GrADS fonts and maps data sets, and may need
    to set some environmental variables.

    See the documentation at:

      #{staged_path}/grads-#{version}/bin/INSTALL
  EOS
end
