cask 'lingon-x' do
  version '2.3.3'
  sha256 '76dad89e5003bbbd97e4ebe72c9f1d9e3a83703613e41ca8108ac7bf08629457'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'ae2dfa5edb38ca89aa7bb95ff035a9151fe368d1c13526cf984c02b2c7fb63b6'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
