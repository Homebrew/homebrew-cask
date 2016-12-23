cask 'lingon-x' do
  version '4.3.2'
  sha256 'e565690b365cee46867abe3a3caebccd5c9bcea99e5c244001a5b658c1107fee'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'dd006a1e3744447d6652a4b8b7c6a4ec7780ccca6ba5b5712236f4294a3feb44'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
