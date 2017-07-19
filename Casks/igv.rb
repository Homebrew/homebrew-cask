cask 'igv' do
  version '2.3.97'
  sha256 '79fe1318cf8019507ddd8a2643198af00f5a2eb7ab02e46718b2962b984c86ca'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
