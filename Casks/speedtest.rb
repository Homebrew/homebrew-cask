cask 'speedtest' do
  version '1.0.0'
  sha256 'ff824d74042501c81e5920eb0acce0fd70910b0be50a3e375946e3a0e48ba2b1'

  # github.com/claytonjwong/cli was verified as official when first introduced to the cask
  url 'https://github.com/claytonjwong/cli/raw/master/ookla-speedtest-1.0.0.35-devel.8c90f04-macosx.tgz'
  name 'Speedtest'
  homepage 'https://www.speedtest.net/'

  binary 'speedtest'
end
