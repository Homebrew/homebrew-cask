cask 'daemon-tools-lite' do
  version '4.2.235'
  sha256 'b3c11591fb747910a1eef455e320e94c707805159bd4f45014b5c36ae6ecb03d'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: '9bc32c145dd262d074b99fd7ba0b1558838a18a649ba6620a9844399b44084be'
  name 'DAEMON Tools Lite'
  homepage 'https://www.daemon-tools.cc/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DAEMON Tools Lite.app'
end
