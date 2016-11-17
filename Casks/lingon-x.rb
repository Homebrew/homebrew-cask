cask 'lingon-x' do
  version '4.3'
  sha256 '96d66d13b4f2461c3bfb4b737f519b9478829d232c2bdc33507bcab407f5b15d'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'a050e6a7fdbe083fd4f8195ccbeed19872e53f90586e96751384dd920ba80e69'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
