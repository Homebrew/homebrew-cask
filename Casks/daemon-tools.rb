cask 'daemon-tools' do
  version '7.1.541'
  sha256 'dfbf38aa0c2147d16302555d17d0c6a61f9b069117f7cad4f6dee7fe3a556f60'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
