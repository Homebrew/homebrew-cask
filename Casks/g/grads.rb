cask "grads" do
  version "2.2.1"
  sha256 "befcb07678abfb4b247019658498cd0ad90bf6028374bdd941b64455d7f8d262"

  url "ftp://cola.gmu.edu/grads/#{version.major_minor}/grads-#{version}-bin-darwin17.5.tar.gz"
  name "Grid Analysis and Display System"
  name "GrADS"
  desc "Access, manipulate, and visualise earth science data"
  homepage "http://cola.gmu.edu/grads/grads.php"

  livecheck do
    url "http://cola.gmu.edu/grads/downloads.php"
    regex(/href=.*?grads[._-]?v?(\d+(?:\.\d+)+)-bin-darwin.*?\.t/i)
  end

  binary "grads-#{version}/bin/bufrscan"
  binary "grads-#{version}/bin/grads"
  binary "grads-#{version}/bin/grib2scan"
  binary "grads-#{version}/bin/gribmap"
  binary "grads-#{version}/bin/gribscan"
  binary "grads-#{version}/bin/stnmap"

  # No zap stanza required

  caveats do
    requires_rosetta
    <<~EOS
      In order to use the GrADS tools, you will need
      the GrADS fonts and maps data sets, and may need
      to set some environmental variables.

      See the documentation at:

      #{staged_path}/grads-#{version}/bin/INSTALL
    EOS
  end
end
