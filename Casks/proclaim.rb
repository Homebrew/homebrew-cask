cask 'proclaim' do
  version '2.12.0.0029'
  sha256 'ebc25386eb03244b6d7d4c6b3616883969d6f784911de5b796957f5cdfca9a53'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
