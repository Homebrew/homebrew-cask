cask 'runtastic-connect' do
  version :latest
  sha256 :no_check

  url 'http://download.runtastic.com/connect/mac/runtasticConnect.dmg'
  appcast 'http://download.runtastic.com/connect/mac/appcast.xml',
          :sha256 => '27a7f2b9d26e2ad4a46ebc4cc7c6ea2a9d4bceb5e25d36abc2a882fa206d723c'
  name 'Runtastic Connect'
  homepage 'https://www.runtastic.com/connect'
  license :gratis

  app 'Runtastic Connect.app'
end
