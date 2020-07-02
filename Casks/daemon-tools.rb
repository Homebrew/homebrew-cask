cask 'daemon-tools' do
  version '8.1.703'
  sha256 '496886d4738a1501ed852bea862cb3cf0b8ff69fdb2e8acbeed142992e4aa1b9'

  # web-search-home.com/ was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
