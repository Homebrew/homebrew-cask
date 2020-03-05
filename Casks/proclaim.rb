cask 'proclaim' do
  version '2.12.0.0023'
  sha256 'bc3db060c50bdd1c785ed70d4b04e35802c0b417c4365883a55777e949f17cda'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
