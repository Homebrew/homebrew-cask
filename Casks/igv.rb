cask 'igv' do
  version '2.5.2'
  sha256 'fe5647a301dd4331b0baa70f81fdd70cbd5dcb8ba92da1b1eb55a242f9d1a03d'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8+'
  end
end
