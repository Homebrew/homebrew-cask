cask 'proclaim' do
  version '2.12.0.0047'
  sha256 '4ddc5c8b17287346e3d9174078da20d3c710c3c27cd6f9a77434d0c78e00ba71'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
