cask 'rowmote-helper' do
  version '4.1.4'
  sha256 '7f58d3596d2ffd6310c5cdb9fef89d0f55e60e45deb3fade04990ed73e9c0bc9'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'http://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml',
          :sha256 => 'b24f00bd9ef1fafb0f5266d8649741f2da65ea5be361013971dedaaf00790447'
  name 'Rowmote Helper'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'
  license :commercial

  app 'Rowmote Helper.app'
end
