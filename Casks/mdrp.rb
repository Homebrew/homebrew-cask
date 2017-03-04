cask 'mdrp' do
  version '6.1.1'
  sha256 '6d1db48e3f5cfca90cd848b7c322b2ca893475cc94ddea72304bacbc1d9573e5'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: 'c5027dc6fbebee66acbb9bc9d84955a2d89281112cde59d5af3080b2eadfbdb0'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
