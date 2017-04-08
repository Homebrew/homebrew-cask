cask 'appgate-client' do
  version '11.2.3'
  sha256 'a9eb6ed2f46f33dfca21aea81ff163b99978aee27f78bbbc55200ed12728ae62'

  url "http://download.cryptzone.com/files/download/AppGate-#{version}/Clients/MacOSX/AppGate_Client.dmg"
  name 'AppGate (classic)'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate-classic/'

  pkg 'AppGate Client.pkg'

  uninstall pkgutil: [
                       'com.appgate.pkg.appgateclient.component',
                       'com.appgate.pkg.appgatefwd.component',
                     ]

  caveats do
    depends_on_java('6+')
  end
end
