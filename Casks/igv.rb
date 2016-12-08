cask 'igv' do
  version '2.3.88'
  sha256 'dde07c3b7b04bb105055230cef625b24a8cda3107ea423d56586213290b8099f'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
