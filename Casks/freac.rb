cask 'freac' do
  version '1.1-alpha-20180716a'
  sha256 'b0e0ce28a114d5da614667a74a31351438a8012da3f6788ed00667c1b608eb62'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
