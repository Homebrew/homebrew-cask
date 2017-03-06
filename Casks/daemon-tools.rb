cask 'daemon-tools' do
  version '5.0.254'
  sha256 '9235ae3d348c90302716564d26e5a3f8f89f9a5588b0c2213c751349650935f2'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: 'fb93b8c8f7ab2a5beff9b603e9dccafe532774f0696a2cbad25670df3052b42e'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/home'

  app 'DAEMON Tools.app'
end
