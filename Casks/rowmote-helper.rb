cask :v1 => 'rowmote-helper' do
  version '4.1.2'
  sha256 '795359b6c5af08985acd7bffe7665be4c60656a7345c92c2602dd123b54380c2'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  name 'Rowmote Helper'
  appcast 'http://rowmote.com/rowmote-appcast.xml',
          :sha256 => '1ec26ed36b1e236db5c8a8efd4d39362121fc5ec98ad1d4fb682b012a3f40298'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'
  license :commercial

  app 'Rowmote Helper.app'
end
