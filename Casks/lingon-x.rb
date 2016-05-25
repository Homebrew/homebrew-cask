cask 'lingon-x' do
  version '4.1'
  sha256 'ef94e21fc0165d0e0d3917d475f4bc6211503384edaddd4d5dcb630d9785ab98'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '7186a892d0a32977e74951eafbdb9e485e3cfbe12c2c695ea097e2fbcb80f0a9'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
