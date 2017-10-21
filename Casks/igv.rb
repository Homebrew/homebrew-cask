cask 'igv' do
  version '2.4.3'
  sha256 '98fef91d25707957b9101e2bd155795e7a90cea5502f1b6f54608d35422272ad'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
