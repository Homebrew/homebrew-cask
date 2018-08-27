cask 'igv' do
  version '2.4.14'
  sha256 'de76a2c5716ab2d39ba03b966779c2c8c2c2ea4e177c82e25d337ea2b9ae6088'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8'
  end
end
