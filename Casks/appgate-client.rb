cask 'appgate-client' do
  version '11.3-LTS'
  sha256 '67b7c8a4d05fad4597e40f91b31f80f0dd8decfa9a28d5d945363a2f1c4d7a8c'

  url "https://download.cryptzone.com/files/download/AppGate-#{version}/Clients/MacOSX/AppGate_Client.dmg"
  name 'AppGate (classic)'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate-classic/'

  pkg 'AppGate Client.pkg'

  uninstall launchctl: 'com.cryptzone.appgate.fwdd',
            pkgutil:   [
                         'com.appgate.pkg.appgateclient.component',
                         'com.appgate.pkg.appgatefwd.component',
                       ]

  caveats do
    depends_on_java '6+'
  end
end
