cask 'proclaim' do
  version '2.12.0.0016'
  sha256 'ec9a42db0bcb6002a278ff42a8f398ea7695bedb004549e2dc0f8e23aeba5763'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
