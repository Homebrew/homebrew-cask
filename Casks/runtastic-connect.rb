cask 'runtastic-connect' do
  version :latest
  sha256 :no_check

  url 'http://download.runtastic.com/connect/mac/runtasticConnect.dmg'
  appcast 'http://download.runtastic.com/connect/mac/appcast.xml',
          :sha256 => '5a12c0d1453700ef2b9e284e3c5ea80649c2ef21aa0a6f8308629c91ea85fc8f'
  name 'Runtastic Connect'
  homepage 'https://www.runtastic.com/connect'
  license :gratis

  app 'Runtastic Connect.app'
end
