cask :v1 => 'controlplane' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '37f93d3a3a17a6e2f24447f0bc74c7e89ec1581ca52e5970960544858c86f909'
  else
    version '1.6.0'
    sha256 '0427c92e543cd6017d0a85a50fb69d0d235e41cd3f4b81a7d93f33c4a853a0c2'

    appcast 'http://www.controlplaneapp.com/appcast.xml',
            :sha256 => '52a5d19431f0cc5de429581c8bf6d5202f4cd5ede8e210ed94613349870d3557'
  end

  url "http://www.controlplaneapp.com/download/#{version}"
  name 'ControlPlane'
  homepage 'http://www.controlplaneapp.com/'
  license :gpl

  depends_on :macos => '>= :snow_leopard'

  app 'ControlPlane.app'

  zap :delete => '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
