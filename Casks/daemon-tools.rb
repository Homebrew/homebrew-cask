cask 'daemon-tools' do
  version '7.0.485'
  sha256 'd46329e2a1b9caec36167e12ba4d67e833a8a8c38af7c3939d5ec9fb6200135f'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
