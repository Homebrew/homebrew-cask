cask 'daemon-tools' do
  version '7.0.486'
  sha256 '8a4a0dd0e1b30f7c3882b395b22779a138b950d9053e8c0ce7c7f04f8e9604d0'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
