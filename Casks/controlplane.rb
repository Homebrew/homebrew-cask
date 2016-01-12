cask 'controlplane' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '37f93d3a3a17a6e2f24447f0bc74c7e89ec1581ca52e5970960544858c86f909'
  else
    version '1.6.1'
    sha256 '945ae102b81b838df65edf6f83292d33399218113e67bdfdaaa088c0f219ea47'

    appcast 'http://www.controlplaneapp.com/appcast.xml',
            :sha256 => 'a12647263016d58bedf5f2044fbd60ec5c7a950e37d984d4e0f02a0c17a7a3f0'
  end

  url "http://www.controlplaneapp.com/download/#{version}"
  name 'ControlPlane'
  homepage 'http://www.controlplaneapp.com/'
  license :gpl

  depends_on :macos => '>= :snow_leopard'

  app 'ControlPlane.app'

  zap :delete => '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
