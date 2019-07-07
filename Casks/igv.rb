cask 'igv' do
  version '2.5.3'
  sha256 'bf4bce3a2f15af606479b6f738749b82acaf68ff0ec4b8525580e3e197aa7e13'

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
