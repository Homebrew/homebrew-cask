cask 'handshaker' do
  version '2.1.0'
  sha256 'f337d070c79da0542e1728dab7a27c2eeccddf4aa4fa6475d8e77887ac3dfd36'

  url 'https://sf.smartisan.com/sf/release/download'
  appcast 'https://sf.smartisan.com/update.plist',
          checkpoint: '175bafc5f53c7d3c356088708285d308aceb73932b4a0a8fb72080b2c17dd1bd'
  name 'HandShaker'
  homepage 'http://www.smartisan.com/apps/'

  app 'HandShaker.app'
end
