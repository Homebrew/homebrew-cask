cask 'igv' do
  version '2.8.6'
  sha256 'dc5607a433a6bafc5f5a6c36d1bc55ae2988a6c42af40d6962f0d9b573e5cb23'

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
