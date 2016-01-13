cask 'mdrp' do
  version '6.0.0'
  sha256 '8893e5ff44faaf667ef83655d3a620901e203467f5902870d04af67355a8adf6'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          :sha256 => '8861ee403e485ef5498e53ee0583b8523a8d3ed9611dd01edfd0d46bae44b4b8'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'
  license :commercial

  app 'MDRP.app'
end
