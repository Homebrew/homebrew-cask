cask 'proclaim' do
  version '2.11.0.0089'
  sha256 'effdec01010334ee0a487963e62e12ed34217750b4bd66b64cec00f35718435f'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
