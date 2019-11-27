cask 'proclaim' do
  version '2.11.0.0088'
  sha256 '059dcb766759fa903bf0cca7cd23f74de64894e544c22a1ba97c349f4ad7e0b9'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
