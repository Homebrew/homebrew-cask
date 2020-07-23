cask 'mqttx' do
  version '1.3.2'
  sha256 '18311102107debddb9abcbef0b2c5950608e6bd5a8d9ca706a34cb3d35381e73'

  # github.com/emqx/MQTTX/ was verified as official when first introduced to the cask
  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-mac.zip"
  appcast 'https://github.com/emqx/MQTTX/releases.atom'
  name 'MQTTX'
  homepage 'https://mqttx.app/'

  app 'MQTTX.app'
end
