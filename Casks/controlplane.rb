cask :v1 => 'controlplane' do
  version '1.5.7'
  sha256 '67782f1fbfbbcb908c4efdf99b0303178d17a38a2db5d85a031fbe83e7d46366'

  url "http://www.controlplaneapp.com/download/#{version}"
  appcast 'http://www.controlplaneapp.com/appcast.xml',
          :sha256 => 'b5244a1703dac6ffa601e24b03b3a16f96cf74d5b840d0af14b666780407de77'
  name 'ControlPlane'
  homepage 'http://www.controlplaneapp.com/'
  license :gpl

  app 'ControlPlane.app'

  zap :delete => '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
