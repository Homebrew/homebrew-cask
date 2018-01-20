cask 'igv' do
  version '2.4.4'
  sha256 '8c45258b6c990b2d8f53b1f008bfd0ea9d30fab7e11abbdefb8cc8a27bbad3c0'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
