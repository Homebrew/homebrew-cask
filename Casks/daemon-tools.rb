cask 'daemon-tools' do
  version '6.3.419'
  sha256 '033fa39159d5ff6818d91ad3c8f15603511868b73dbb7acff849e3923fb14536'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/home'

  app 'DAEMON Tools.app'
end
