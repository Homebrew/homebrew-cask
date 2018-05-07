cask 'el34-eddie' do
  version '3.3.3'
  sha256 '6e0b1aafabe3092c8803330c8e32cde35a4a9eb4f9aa75139dd323ad8bb3338d'

  # el34software.com was verified as official when first introduced to the cask
  url "http://el34software.com/latest/Eddie%20OSX%20#{version}.zip"
  appcast 'http://www.el34.com/EddieReleaseNotes.html',
          checkpoint: 'd5b9861054ed3949284c53b713c7865a3fb735be2cc318eccfca718b5800099a'
  name 'Eddie'
  homepage 'http://www.el34.com/'

  app 'Eddie/Eddie.app'
  binary 'Eddie/tellEddie'
end
