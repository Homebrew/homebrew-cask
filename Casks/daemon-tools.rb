cask 'daemon-tools' do
  version '7.0.497'
  sha256 '08dce18a8e58770a079fa4a8e48b70ab7c81c70706d03998ef5c79aecb005847'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
