cask 'daemon-tools' do
  version '7.3.603'
  sha256 'fea8203c973dc65c21405d8d9b3c6032c1d31226011ab06c0e56e713da0a2f3c'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
