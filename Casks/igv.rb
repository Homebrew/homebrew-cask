cask 'igv' do
  version '2.3.98'
  sha256 '14c7810690a2aa7cb60950201a299b8cd6737674f6104439da570863869b2d00'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
