cask 'lingon-x' do
  version '4.0.2'
  sha256 '551f06c903b6e606aead136457b638664fea8e09a461ea7d948ece7c092056e6'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '69383de52881630cdc2bd0d62d8ccd5007991d5d9167943d59712b5758fbea2b'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
