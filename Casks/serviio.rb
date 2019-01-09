cask 'serviio' do
  version '1.10.1'
  sha256 '2ffb1263780c7df628fe1e56986fe1a4f23e105d6c3c9ead73303cb9c3f9f704'

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
