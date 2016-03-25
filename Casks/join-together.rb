cask 'join-together' do
  version '7.6.0'
  sha256 '85171061aba18647a37e4aa9aa49328d8105c21ccbb3dde77778d60bc6dd58a7'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: '4ea348e7c3847f10cd4222002e091eb2d63713954761268762531b27acc19189'
  name 'Join Together'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
