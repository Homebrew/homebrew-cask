cask 'proclaim' do
  version '2.12.0.0050'
  sha256 '331c51f20b934b19d282bbee70027208e05bdaa1ba6212589dabdc69d94a7606'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
