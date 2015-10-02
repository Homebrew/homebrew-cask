cask :v1 => 'controlplane' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '37f93d3a3a17a6e2f24447f0bc74c7e89ec1581ca52e5970960544858c86f909'
  else
    version '1.6.1'
    sha256 '945ae102b81b838df65edf6f83292d33399218113e67bdfdaaa088c0f219ea47'

    appcast 'http://www.controlplaneapp.com/appcast.xml',
            :sha256 => '432b259fc8397206b28a2a19209551c350b7ca0f376f50013b8b81a832ff70b8'
  end

  url "http://www.controlplaneapp.com/download/#{version}"
  name 'ControlPlane'
  homepage 'http://www.controlplaneapp.com/'
  license :gpl

  depends_on :macos => '>= :snow_leopard'

  app 'ControlPlane.app'

  zap :delete => '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
