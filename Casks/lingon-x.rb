cask 'lingon-x' do
  version '4.2.2'
  sha256 'b8c11ecc456c63f22f8cf2a0abe27bcb453314458e36e7c6ba4a53c973c091f2'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '451448d9b34721711926e5ec12d0cd79416858b149a0ed6ebdaacfe4181a59d6'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
