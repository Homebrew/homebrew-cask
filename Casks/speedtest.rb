cask 'speedtest' do
  version '1.0.0'
  sha256 '7ac56aa1dfad6e76b775d00c2ba81f1dc21c87a1d174d63e566f000c61446c67'

  # github.com/claytonjwong/cli was verified as official when first introduced to the cask
  url 'https://github.com/claytonjwong/cli/raw/master/ookla-speedtest-1.0.0.35-devel.xxxxxxx-macosx.tgz'
  name 'Speedtest'
  homepage 'https://www.speedtest.net/'

  binary 'speedtest'
end
