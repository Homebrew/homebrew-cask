cask 'daemon-tools-lite' do
  version '4.1.227'
  sha256 '5beeeaea798781c83470c88f0404c8156efe47597d254bc7f5c1edac894aa5ad'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: '48410ce70ce912cd51c297e22da0ebdb2cf4b97c6f330b61a9fe91d389ed2e9b'
  name 'DAEMON Tools Lite'
  homepage 'https://www.daemon-tools.cc/products/dtMacLite'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DAEMON Tools Lite.app'
end
