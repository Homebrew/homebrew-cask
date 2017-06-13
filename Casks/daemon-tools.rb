cask 'daemon-tools' do
  version '5.1.274'
  sha256 '71f62a28619931dae9e17b409a94a000c636bc9ab2166e2f3439b50d6acfd164'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: '67a5a36846d83bd5f2ec3434f045048ee8233cdffe36ddc1d53c62f179f9c6de'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/home'

  app 'DAEMON Tools.app'
end
