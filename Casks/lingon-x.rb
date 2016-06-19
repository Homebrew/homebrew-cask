cask 'lingon-x' do
  version '4.1'
  sha256 'e4b434ae54a25fef3a0559a817c7a783aa3f15c84541dbc752862da673c1f947'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '9099b49d30e51b899dde3496c631e26d6e386f8b276d396f8905e11350264818'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
