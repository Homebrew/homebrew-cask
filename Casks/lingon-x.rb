cask 'lingon-x' do
  version '4.1.2'
  sha256 '58f27a6e9fe0a163265553f4b6e1df7b7af3072787dcd3aae1a84152d478cfb5'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '478a59fe2e4ac5549cdba61e92113a1e360aa94fa41709f4b1009e477195ce5d'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
