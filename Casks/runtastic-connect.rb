cask 'runtastic-connect' do
  version '1.2.4'
  sha256 '8ee506aaf8e61d476a9955b63f43babb0f064a78065ee97b7b411f4f1effd339'

  url "http://download.runtastic.com/connect/mac/Connect_#{version}.zip"
  appcast 'http://download.runtastic.com/connect/mac/appcast.xml',
          checkpoint: '0cff0a9a0cc0a8a5952ff646aa86ddd180bb16000b1d3e0d6f58bcad45593f56'
  name 'Runtastic Connect'
  homepage 'https://www.runtastic.com/connect'

  app 'Runtastic Connect.app'
end
