cask 'freac' do
  version '1.1-alpha-20180913'
  sha256 '592e05335c22a49ea5ee21d4a9c622f68f1efcd1a39835f019e0e2c4f0e200d1'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
