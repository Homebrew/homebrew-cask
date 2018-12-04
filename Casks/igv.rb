cask 'igv' do
  version '2.4.15'
  sha256 '8329e7f38971e3d3ca22c1979664b75ae12b4a1febc7c94bde8027cfe5843dff'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8'
  end
end
