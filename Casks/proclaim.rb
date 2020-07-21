cask 'proclaim' do
  version '2.12.0.0078'
  sha256 '460e1a4d741035fa76272bc2db5e33352f88f66e2cdc4eb3a4d84bd20bbefa7b'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
