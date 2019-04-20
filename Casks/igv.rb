cask 'igv' do
  version '2.5.1'
  sha256 '4dc1f676174f1125c3b643d2dc57473b816adc88e4f798e3710a1e7884518157'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8+'
  end
end
