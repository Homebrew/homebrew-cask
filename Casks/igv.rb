cask 'igv' do
  version '2.3.68'
  sha256 '3e677fa818016138af5ca9c6eadb3be18a72f5b737adfba9819c020954556022'

  url "http://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'http://www.broadinstitute.org/software/igv/'
  license :mit

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
