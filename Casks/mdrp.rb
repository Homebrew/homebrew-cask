cask 'mdrp' do
  version '6.0.0'
  sha256 '8893e5ff44faaf667ef83655d3a620901e203467f5902870d04af67355a8adf6'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          :sha256 => 'ce35de4f40f5ff5ae2b74a27c1a52c9b325ffd599bb9265b5490fb15bae7715f'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'
  license :commercial

  app 'MDRP.app'
end
