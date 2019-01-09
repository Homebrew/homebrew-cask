cask 'igv' do
  version '2.4.16'
  sha256 '8ebda73fa77f755b8c223b5c45f7aeabdb044ac09ca2bc698b11578b1cf171ca'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8'
  end
end
