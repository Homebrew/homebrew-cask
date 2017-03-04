cask 'daemon-tools' do
  version '5.0.254'
  sha256 'cf4bcb540dfbacc1407c5f6953537642caf2ffcfc0b00b7e687f8cf159968267'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: 'fb93b8c8f7ab2a5beff9b603e9dccafe532774f0696a2cbad25670df3052b42e'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/home'

  app 'DAEMON Tools.app'
end
