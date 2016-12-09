cask 'mdrp' do
  version '6.1.0'
  sha256 '0c839d635b11e093bc34d0feb1b1995c6d0009b98ed0e8cf15a46257abd10c2f'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: '52c2897b3c7c8f243b888a85e1b9f85ae197f6744899e9a35c8bb530c98a1275'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
