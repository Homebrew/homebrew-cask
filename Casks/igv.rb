cask 'igv' do
  version '2.3.80'
  sha256 '3d6b074bcfe5812d8b0630051f85d3a17f87eedf933ca3ce91abc36766c8d165'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://www.broadinstitute.org/software/igv/'
  license :mit

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
