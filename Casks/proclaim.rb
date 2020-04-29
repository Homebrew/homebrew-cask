cask 'proclaim' do
  version '2.12.0.0037'
  sha256 'bdb2bb63c4c32582c0c470a0f4958ff5c74f4b086d64fd8d8a97ad5446f5e966'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
