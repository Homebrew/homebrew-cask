cask 'serviio' do
  version '1.9.2'
  sha256 'de9a2918ae15b7bdd3042a5007a621bd111dcc552e6b580b74d7c1293fad26ed'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name 'Serviio'
  homepage 'http://serviio.org/'

  pkg "Serviio-#{version}.pkg"

  uninstall pkgutil:   [
                         'org.serviio.pkg.autostart',
                         'org.serviio.pkg.JRE',
                         'org.serviio.pkg.ServiioConsole',
                         'org.serviio.pkg.Serviio',
                       ],
            launchctl: 'org.serviio.server'

  zap trash: [
               '/Library/Application Support/Serviio',
               '/private/var/log/serviio',
               '~/Library/Application Support/CrashReporter/Serviio-Console Helper_*.plist',
               '~/Library/Application Support/Serviio-Console-Wrapper',
               '~/Library/Caches/Serviio-Console-Wrapper',
               '~/Library/Preferences/org.serviio.serviio-web-console.plist',
               '~/Library/Saved Application State/org.serviio.serviio-web-console.savedState',
             ]
end
