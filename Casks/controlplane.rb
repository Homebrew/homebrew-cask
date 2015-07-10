cask :v1 => 'controlplane' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '37f93d3a3a17a6e2f24447f0bc74c7e89ec1581ca52e5970960544858c86f909'
  else
    version '1.5.8'
    sha256 'a580eb6d07c8daa4378065e4cfe56e7e8b8162190f1edf121c3d6df8c1995f88'

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
