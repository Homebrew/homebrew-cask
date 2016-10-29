cask 'lingon-x' do
  version '4.2.4'
  sha256 '8a8badc9b653ac59d6909df5fa782d0e2f04f2aacd7a44b70baadb7ce60596f0'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '16253916417aebe2d398a6d7b93e102bb41bfde3dae2604291b07b7214527ae0'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
