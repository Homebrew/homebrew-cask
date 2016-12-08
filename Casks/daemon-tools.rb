cask 'daemon-tools' do
  version '5.0.253'
  sha256 'd9249c763efebda8095a9a26d23e3ad97d4827ddcdb931b58e0d6f44e012e096'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: 'e86fc0a65ba03a1ced667a29680694b98b2443c2d081a287c32ca62d00d83ca4'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/home'

  app 'DAEMON Tools.app'
end
