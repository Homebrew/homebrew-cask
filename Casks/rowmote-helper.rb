cask :v1 => 'rowmote-helper' do
  version '4.1.4'
  sha256 '7f58d3596d2ffd6310c5cdb9fef89d0f55e60e45deb3fade04990ed73e9c0bc9'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  name 'Rowmote Helper'
  appcast 'http://rowmote.com/rowmote-appcast.xml',
          :sha256 => '6cd34bfdef0bcca248b37e96e7598e09f5ab6a990dc97fc50b0cea7f7adeab7f'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'
  license :commercial

  app 'Rowmote Helper.app'
end
