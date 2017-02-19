cask 'igv' do
  version '2.3.91'
  sha256 '79eac8f336f3a60cd79b2008441660a231245ab3ecdbbeb388634db333f44841'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
