cask 'daemon-tools' do
  version '5.3.303'
  sha256 'e64610e757d2ed67fc22ef32dbe2f3b424a19139cea6189ad6de480ee802e959'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: '134a30f7b2fe753e5ec6508801a23b76c55b3944b0f165d9f4b1eb7b6be165f1'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/home'

  app 'DAEMON Tools.app'
end
