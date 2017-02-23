cask 'AppGate-Client' do
  version '11.2.3'
  sha256 'a9eb6ed2f46f33dfca21aea81ff163b99978aee27f78bbbc55200ed12728ae62'

  url "http://download.cryptzone.com/files/download/AppGate-#{version}/Clients/MacOSX/AppGate_Client.dmg"
  name 'AppGate (Client)'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate-classic/'

  pkg 'AppGate Client.pkg'

  caveats do
    depends_on_java('6')
  end

  uninstall pkgutil: 'com.appgate.pkg.appgateclient.component'
  uninstall pkgutil: 'com.appgate.pkg.appgatefwd.component'

end
