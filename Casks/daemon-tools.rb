cask 'daemon-tools' do
  version '7.2.591'
  sha256 'b8aada23fd44868108ca74ab34a1338df50d175752964d98819fb1c56375fd0b'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
