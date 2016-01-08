cask 'daemon-tools-lite' do
  version '4.1.227'
  sha256 '5beeeaea798781c83470c88f0404c8156efe47597d254bc7f5c1edac894aa5ad'

  # web-search-home.com is the official download host per the appcast feed
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          :sha256 => 'e7b7defb860a14427b85d85d6cc36c8aaf923bb128951f2067e4146c4ed127d6'
  name 'DAEMON Tools Lite'
  homepage 'https://www.daemon-tools.cc/products/dtMacLite'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DAEMON Tools Lite.app'
end
