cask 'proclaim' do
  version '2.11.0.0084'
  sha256 'e084a936172d9fb81ef630b95f0e4875cb731b232aa42b859a75bfe1adf453fd'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
