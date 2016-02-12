cask 'dvdstyler' do
  version '2.9.6'
  sha256 'c3c268ad5d8e3c81f009903baa72e308512baf2cd270312d4fc9be3caa06bf74'

  # sourceforge.net/sourceforge/dvdstyler was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/dvdstyler/DVDStyler-#{version}-MacOSX.dmg"
  name 'DVDStyler'
  homepage 'http://dvdstyler.org'
  license :gpl

  app 'DVDStyler.app'
end
