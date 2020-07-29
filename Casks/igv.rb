cask 'igv' do
  version '2.8.3'
  sha256 'cb1e6d250c2db6752ed563a698d9b493662623fc8cb6b1acbb094314eaa89a79'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  appcast 'https://data.broadinstitute.org/igv/projects/downloads/',
          must_contain: version.major_minor
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8+'
  end
end
