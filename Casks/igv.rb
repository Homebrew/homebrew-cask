cask 'igv' do
  version '2.3.92'
  sha256 '0c1b18eada0ba16a8469450b1315cfc8b65625fb81f4b5ec0030427ccdef03d3'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
