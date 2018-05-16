cask 'appgate-client' do
  version '11.2.7'
  sha256 '6188c0f0ba36bcc1f6876e75af28a2d645cf46c247c026e995061991c691dc9c'

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
    depends_on_java '6+'
  end
end
