cask 'airunlock' do
  version '0.4'
  sha256 '85f4aee6bc67f6b7c0d01ab36e50a117690574c0e31b210aa3f80931269bf170'

  url "https://github.com/pinetum/AirUnlock-for-Mac/releases/download/#{version}/AirUnlock_mac_#{version}.zip"
  appcast 'https://github.com/pinetum/AirUnlock-for-Mac/releases.atom'
  name 'AirUnlock'
  homepage 'https://github.com/pinetum/AirUnlock-for-Mac'

  app 'AirUnlock.app'
end
