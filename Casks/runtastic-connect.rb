cask 'runtastic-connect' do
  version '1.2.5'
  sha256 '2f6da674b3e90c6d6c44519287827703e937921ba2c1d36ca4266a864cffa218'

  url "http://download.runtastic.com/connect/mac/Connect_#{version}.zip"
  appcast 'http://download.runtastic.com/connect/mac/appcast.xml'
  name 'Runtastic Connect'
  homepage 'https://www.runtastic.com/connect'

  app 'Runtastic Connect.app'
end
