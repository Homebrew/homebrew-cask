cask 'igv' do
  version '2.4.13'
  sha256 'fbb8cafc018182d0c68e3579d874a92629519d011d8b35ca8ebb7ad0566ab794'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8+'
  end
end
