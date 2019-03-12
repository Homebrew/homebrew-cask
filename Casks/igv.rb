cask 'igv' do
  version '2.4.18'
  sha256 '39f6bef037340e02b981e019ad2a3f38d10bed6a9bc663b7510c5ee348b69657'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8'
  end
end
