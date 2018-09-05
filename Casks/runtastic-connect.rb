cask 'runtastic-connect' do
  version '1.2.4'
  sha256 '8ee506aaf8e61d476a9955b63f43babb0f064a78065ee97b7b411f4f1effd339'

  url "http://download.runtastic.com/connect/mac/Connect_#{version}.zip"
  appcast 'http://download.runtastic.com/connect/mac/appcast.xml'
  name 'Runtastic Connect'
  homepage 'https://www.runtastic.com/connect'

  app 'Runtastic Connect.app'
end
