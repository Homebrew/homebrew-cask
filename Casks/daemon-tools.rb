cask 'daemon-tools' do
  version '8.1.708'
  sha256 '8db51047e844f52229c4396124c3cd443dfab847b0470a63da48a095fa56b0c1'

  url "http://mirror32.daemon-tools.cc/getfile.php?p=http://eu-uk7.disk-tools.com/324973b6fdb59d4afbf6c9ea58f9751b/DAEMONTools-#{version.dots_to_hyphens}.dmg"
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
