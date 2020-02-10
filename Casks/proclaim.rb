cask 'proclaim' do
  version '2.12.0.0009'
  sha256 '1ecd4dcc0520e76307fca9af45c56841f7eb232ef28925c0cb9649ee0ce2e7bb'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
