cask 'mdrp' do
  version '6.0.0'
  sha256 '8893e5ff44faaf667ef83655d3a620901e203467f5902870d04af67355a8adf6'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: '21bc94e85db13ebd6809a2dce85a8e9285dc2f0c1adcc95055aa60ca7806d6df'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'
  license :commercial

  app 'MDRP.app'
end
