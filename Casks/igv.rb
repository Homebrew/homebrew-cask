cask 'igv' do
  version '2.3.89'
  sha256 'a3960c964fd96e069c3edbec0fd64bb103309745d184d0188202c54339ebb3eb'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
