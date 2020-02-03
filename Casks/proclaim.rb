cask 'proclaim' do
  version '2.12.0.0003'
  sha256 'd7b4bcf4e715e98f88ecc8151fcfe611b3b7d9e63d64ae93e163ff6249dafbf5'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
