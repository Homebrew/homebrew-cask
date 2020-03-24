cask 'proclaim' do
  version '2.12.0.0027'
  sha256 'd17cbc15512e8e9f2331cc07f0bc6caa0ed4c0e1dcc6291e815c772ce590b54c'

  # logoscdn.com/Proclaim was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast 'http://downloads.proclaimonline.com/mac/appcast.xml'
  name 'Faithlife Proclaim'
  homepage 'https://proclaim.faithlife.com/'

  app 'Proclaim.app'
end
