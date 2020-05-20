cask 'proclaim' do
  version '2.12.0.0044'
  sha256 '02319b4ca1c17d1d257464a10d2d779c882a6e46687fecc7cd6e3cd220e7752c'

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
