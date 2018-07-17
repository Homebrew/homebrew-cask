cask 'freac' do
  version '1.1-alpha-20180716'
  sha256 'fd2ebeeb6792dc57c5fd4380d75fa09ff4f7f4d8cedbec83498daf2ac83b0fc7'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
