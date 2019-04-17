cask 'igv' do
  version '2.5.0'
  sha256 '6700e22a4768896c607134565f312fa9097ca77bbae84acaa24875e053e0dde9'

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://software.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java '8+'
  end
end
