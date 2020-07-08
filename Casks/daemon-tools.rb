cask 'daemon-tools' do
  version '8.1.706'
  sha256 '8db51047e844f52229c4396124c3cd443dfab847b0470a63da48a095fa56b0c1'

  # web-search-home.com/ was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
