cask 'dvdstyler' do
  version '2.9.6'
  sha256 'c3c268ad5d8e3c81f009903baa72e308512baf2cd270312d4fc9be3caa06bf74'

  # sourceforge.net/dvdstyler was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dvdstyler/DVDStyler-#{version}-MacOSX.dmg"
  appcast 'https://sourceforge.net/projects/dvdstyler/rss',
          checkpoint: '3b72e00954942e1e3d65a9dedcd212ee651b431500bb920e2774f2f6a1723bbb'
  name 'DVDStyler'
  homepage 'http://dvdstyler.org'

  app 'DVDStyler.app'
end
