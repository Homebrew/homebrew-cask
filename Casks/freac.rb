cask 'freac' do
  version '1.1-alpha-20171119'
  sha256 '265d6a9304c947b866d36191e9820810a02f4696a66f68828603c86d434ce86e'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss',
          checkpoint: '1af0978fed96f9747bcf6adccd9eeaae474d16544bf49c26b37ce74e502cb162'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
