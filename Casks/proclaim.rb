cask 'proclaim' do
  version '2.12.0.0040'
  sha256 '9896ab9a6498b9d20cd56f2e11bbc9f44cc41dc021ecf356354d28d83cf9472a'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
