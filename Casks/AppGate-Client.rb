cask 'AppGate-Client' do
  version '11.2.3'
  sha256 :no_check

  url "http://download.cryptzone.com/files/download/AppGate-#{version}/Clients/MacOSX/AppGate_Client.dmg"
  name 'AppGate-Client'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate-classic/'

  app 'AppGate Client 11.2.3.app'

  caveats do
    depends_on_java('6')
  end
end
