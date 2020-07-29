cask 'proclaim' do
  version '2.12.0.0053'
  sha256 '270d8980d95ec3c7752349af1e7b5716eac4c8c0d3585f81b4ab4d64c4cf664a'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
