cask 'daemon-tools' do
  version '6.0.337'
  sha256 'a1553c5ab597014e2cae5d7a040dbc0f62bbf776bc10d4ebb9a6a8f71c0c3c02'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: 'bffaabaaf98203bb4a10974796e5a66c8180744c01c7e435ec1bd39e16825b99'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/home'

  app 'DAEMON Tools.app'
end
