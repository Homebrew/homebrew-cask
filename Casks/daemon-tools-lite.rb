cask 'daemon-tools-lite' do
  version '4.1.227'
  sha256 '5beeeaea798781c83470c88f0404c8156efe47597d254bc7f5c1edac894aa5ad'

  # web-search-home.com is the official download host per the appcast feed
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          :sha256 => 'bb8f49fe55ebbaed84ccae7e76f27ef5396a301e242a5d58320867d517bf5c48'
  name 'DAEMON Tools Lite'
  homepage 'https://www.daemon-tools.cc/products/dtMacLite'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DAEMON Tools Lite.app'
end
