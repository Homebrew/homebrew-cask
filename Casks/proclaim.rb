cask 'proclaim' do
  version '2.12.0.0052'
  sha256 'c81244d24b9b77e24b92725f7a5d50ad6b6b860ee032cf9a04bcd8d9ed0487ea'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
