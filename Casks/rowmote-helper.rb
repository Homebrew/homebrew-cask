cask 'rowmote-helper' do
  version '4.1.4'
  sha256 '7f58d3596d2ffd6310c5cdb9fef89d0f55e60e45deb3fade04990ed73e9c0bc9'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'http://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml',
          :checkpoint => 'a9465d20a89a6c36893a9cba56afc702c1049fad35340c4f468265413fbb48e0'
  name 'Rowmote Helper'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'
  license :commercial

  app 'Rowmote Helper.app'
end
