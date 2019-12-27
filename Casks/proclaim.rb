cask 'proclaim' do
  version '2.11.0.0092'
  sha256 '5c4b37dcb69a2e48c1b109b3021f9cf599dccca115ac92a589c1e7f699f9fb3a'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
