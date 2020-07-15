cask 'proclaim' do
  version '2.12.0.0073'
  sha256 'a9cc35d7ce7425ecc2792c1bd8c2bc5edc9994a89750453437307457e49a9a1b'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
