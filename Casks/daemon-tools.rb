cask 'daemon-tools' do
  version '6.1.346'
  sha256 '7b9e4cc92872c4a11a4c6795c6e0936b190fc1e58002eab17139893df768e76a'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: '3cf92ea92e38d74e6dbac8ac311f100449ea149d4275d1044fdb30e2ab8b1d20'
  name 'DAEMON Tools'
  homepage 'https://www.daemon-tools.cc/home'

  app 'DAEMON Tools.app'
end
