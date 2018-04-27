cask 'airunlock' do
  version '0.4'
  sha256 '85f4aee6bc67f6b7c0d01ab36e50a117690574c0e31b210aa3f80931269bf170'

  # homepage and URL verified at time of pull request
  url "https://github.com/pinetum/AirUnlock-for-Mac/releases/download/#{version}/AirUnlock_mac_#{version}.zip"
  appcast 'https://github.com/pinetum/AirUnlock-for-Mac/releases.atom',
          checkpoint: '9726ba88fbaae1966769444d7dc4f845602b2c4e0fdcb723ae9ef792db696bdb'
  name 'AirUnlock'
  homepage 'http://airunlock.qtlin.tw/'

  app 'AirUnlock.app'

  caveats <<~EOS
    To run this app you need AirUnlock for Android:
    https://github.com/pinetum/AirUnlock-for-Android
    https://f-droid.org/packages/tw.qtlin.mac.airunlocker/
  EOS
end
