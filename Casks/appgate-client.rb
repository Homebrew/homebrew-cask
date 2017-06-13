cask 'appgate-client' do
  version '11.2.4'
  sha256 '897912245bdd11903d2417da1227bf582e566dcf17af211fdc0f6cf568a7f9ad'

  url "http://download.cryptzone.com/files/download/AppGate-#{version}/Clients/MacOSX/AppGate_Client.dmg"
  name 'AppGate (classic)'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate-classic/'

  pkg 'AppGate Client.pkg'

  uninstall launchctl: 'com.cryptzone.appgate.fwdd',
            pkgutil:   [
                         'com.appgate.pkg.appgateclient.component',
                         'com.appgate.pkg.appgatefwd.component',
                       ]

  caveats do
    depends_on_java('6+')
  end
end
