cask 'lingon-x' do
  version '4.3.5'
  sha256 '5aa93c639114a3d30725709a0f924e26e264d5738e52154e690d557a5415bb56'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'cb87c61e066a4a548e156770d9d4f56ebfd896354b4f5fcd61e4c300e67901c9'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
