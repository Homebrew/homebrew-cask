cask 'igv' do
  version '2.3.93'
  sha256 'b6be14b5a8293d06cbba22937625a6e556fa1191119c8edc25778257a2516df7'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
