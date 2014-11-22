cask :v1 => 'controlplane' do
  version '1.5.4'
  sha256 'd35f24b8559a0554b501bc6ff6a0b5b8b4f3ab3c123db1464d5720df9359152b'

  url "http://www.controlplaneapp.com/download/#{version}"
  appcast 'http://www.controlplaneapp.com/appcast.xml',
          :sha256 => 'bc5bd3a27e1e12f09fc1d5089af79535992473d361030ae50993e7c0135ad287'
  homepage 'http://www.controlplaneapp.com/'
  license :unknown

  app 'ControlPlane.app'

  zap :delete => '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
