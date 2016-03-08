cask 'runtastic-connect' do
  version '1.1.0'
  sha256 '325e957b0b6cc8eba79e6a3fd01e13773dabfb13d2571c2feb9729f603c2a89f'

  url "http://download.runtastic.com/connect/mac/Connect_#{version}.zip"
  appcast 'http://download.runtastic.com/connect/mac/appcast.xml',
          checkpoint: '5a12c0d1453700ef2b9e284e3c5ea80649c2ef21aa0a6f8308629c91ea85fc8f'
  name 'Runtastic Connect'
  homepage 'https://www.runtastic.com/connect'
  license :gratis

  app 'Runtastic Connect.app'
end
