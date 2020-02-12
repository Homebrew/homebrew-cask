cask 'proclaim' do
  version '2.12.0.0014'
  sha256 '85622f2248e6b30179d9e6f9f6cedd72743600e168ebee5c23ca990422337371'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
