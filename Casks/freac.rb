cask 'freac' do
  version '1.1-alpha-20180306a'
  sha256 'ba48db45a292da52065b598b7ba506eb96672b606e4efe764bc95d362e9c4ad1'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss',
          checkpoint: '25db413c755d23ab096e7b01300a158cd25b06422d50dd93b38c1ac579b6113a'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
