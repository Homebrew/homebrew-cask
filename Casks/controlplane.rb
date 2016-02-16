cask 'controlplane' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '37f93d3a3a17a6e2f24447f0bc74c7e89ec1581ca52e5970960544858c86f909'
  else
    version '1.6.3'
    sha256 'eadc105a5cbc108200b5acf89e4e78650e58771208d53e3c276fa8fd5c3d14db'

    appcast 'http://www.controlplaneapp.com/appcast.xml',
            checkpoint: '3f5235e5d5b788336468a8b61b00ecc9c61ae6b38225aa5f47f2ad907298e9e1'
  end

  url "http://www.controlplaneapp.com/download/#{version}"
  name 'ControlPlane'
  homepage 'http://www.controlplaneapp.com/'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  app 'ControlPlane.app'

  zap delete: '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
