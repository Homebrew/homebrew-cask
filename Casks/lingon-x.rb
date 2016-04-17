cask 'lingon-x' do
  version '4.0.1'
  sha256 'abb443eb69ef2db3c5fcdbe9d6ceb51d2ac5189cf55f6f3191931e2c361a41fc'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '5f0b4b1f83aaeb7ea7633b88f753b834d313c26978c810b71195324f6f9ac346'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
