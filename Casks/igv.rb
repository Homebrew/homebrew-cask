cask 'igv' do
  version '2.4.2'
  sha256 '6d1939b0228d46614cf0cdbad692a208f5e3475542c9fb238fdb1d8e4dde89b4'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
