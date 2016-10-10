cask 'flvcd-bigrats' do
  version '0.5.2.1'
  sha256 'c553e991f6326aa5527ef44df2270d91bc13154ddcfe3d9de0593078d0ffc41f'

  url "http://download.flvcd.com/mac/flvcd_bigrats_mac#{version.no_dots}.zip"
  name '硕鼠MAC'
  homepage 'http://www.flvcd.com/index.htm'

  app '硕鼠MAC.app'
end
