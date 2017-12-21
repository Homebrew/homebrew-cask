cask 'mdrp' do
  version '7.0.5'
  sha256 '5c21aa23698133aeb34d91676820588f533d5b02062f94abc9c19170ab990c41'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: '08dbc4e4d1c36103b820a9b6f5b5a9c8037404502fc2d99d93eaba5bab2940be'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
