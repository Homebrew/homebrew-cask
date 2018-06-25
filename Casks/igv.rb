cask 'igv' do
  version '2.4.10'
  sha256 '111a4ffed729cc8cd38cf0e56e773be3165ae68ecebc1ac4df231ec1c8683524'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8+'
  end
end
