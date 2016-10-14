cask 'daemon-tools-lite' do
  version '4.3.238'
  sha256 '349f89e92c113b6d706b22c26932cd19f21efda14e131a58f9c0ecb94c0e5c14'

  # web-search-home.com was verified as official when first introduced to the cask
  url 'http://web-search-home.com/download/dtLiteMac'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: '79b2e4d6148069e93efd93c4f2dd4cf4fc0ef1fc09114898151aae03127ad1ad'
  name 'DAEMON Tools Lite'
  homepage 'https://www.daemon-tools.cc/'

  app 'DAEMON Tools Lite.app'
end
