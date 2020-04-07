cask 'proclaim' do
  version '2.12.0.0032'
  sha256 '410ff2a26062bc945aff84ad011e7386a9d36422a965f3df00f2ba467d29e33d'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
