cask 'controlplane' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '37f93d3a3a17a6e2f24447f0bc74c7e89ec1581ca52e5970960544858c86f909'
  else
    version '1.6.2'
    sha256 '3464571449fa95776c79e32c9f5b20d7528d8969a9905b04e4248ce505143168'

    appcast 'http://www.controlplaneapp.com/appcast.xml',
            checkpoint: 'a3abb9d2ae2daed7551c70a2953a235ee847055afaa2b0e7aa1471060f2c44e6'
  end

  url "http://www.controlplaneapp.com/download/#{version}"
  name 'ControlPlane'
  homepage 'http://www.controlplaneapp.com/'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  app 'ControlPlane.app'

  zap delete: '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
