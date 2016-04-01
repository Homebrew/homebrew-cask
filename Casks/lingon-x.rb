cask 'lingon-x' do
  version '4.0'
  sha256 'f10e3d765c95daa1eeca7144d59b81b356bd8da06f43406276b1c5f9cd62afb4'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '48f22e57cfe79d4173dd2d36a7d787852be0fd6d18bc766a6545cff17e22c032'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
