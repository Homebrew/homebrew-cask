cask 'igv' do
  version '2.3.77'
  sha256 '042a9112c1e092fde69705d44c82b363b1c67ed713b4e91ce242b46ab47cdb0b'

  url "http://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'http://www.broadinstitute.org/software/igv/'
  license :mit

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
