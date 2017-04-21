cask 'igv' do
  version '2.3.92'
  sha256 '3c45611e2d48e8d232142222275a6c2af785c18be09f103bca3070922e987d52'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
