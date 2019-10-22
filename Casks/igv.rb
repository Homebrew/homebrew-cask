cask 'igv' do
  version '2.7.0'
  sha256 '58c59a706760615bff52d2e97e7256b8245601d5241faf9d0e55f5d9144d0cce'

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
