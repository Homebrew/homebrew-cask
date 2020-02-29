cask 'proclaim' do
  version '2.12.0.0021'
  sha256 '2d91f4a36e2d195c68bcd27308b344553ecb9ca19e1615d64b72185025209ce5'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
