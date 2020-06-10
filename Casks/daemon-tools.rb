cask 'daemon-tools' do
  version '8.0.663'
  sha256 '74213d0cbc504529279506ea3cdce60703cd4c1d6b33826018445be5b438cb4f'

  # web-search-home.com/ was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools.app'
end
