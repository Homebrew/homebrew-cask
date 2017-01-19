cask 'igv' do
  version '2.3.90'
  sha256 '42e445c23f386a06349aea1e57cfb1dcc4ed1c72a635698e282db4f953af3db1'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
