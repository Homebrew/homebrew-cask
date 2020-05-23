cask 'proclaim' do
  version '2.12.0.0046'
  sha256 'a9c664e5d38ccde4e77c246ae38002f3d67864551ab99e0e1c4259ff0e51c218'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
