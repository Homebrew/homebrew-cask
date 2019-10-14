cask 'igv' do
  version '2.6.3'
  sha256 '9dff406ecebc9312278eb22b3e14250ee4e0d3f8a70c401f73877a00ba2f0fa7'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  appcast 'https://data.broadinstitute.org/igv/projects/downloads/',
          configuration: version.major_minor
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8+'
  end
end
