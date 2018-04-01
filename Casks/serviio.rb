cask 'serviio' do
  version '1.9'
  sha256 '18577b1e9bb23d46b232264a5fde13ae24650133a0f8e1d630ccf5ddc5834905'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name 'Serviio'
  homepage 'http://serviio.org/'

  pkg "Serviio-#{version}.pkg"

  uninstall pkgutil: [
                       'org.serviio.pkg.autostart',
                       'org.serviio.pkg.JRE',
                       'org.serviio.pkg.ServiioConsole',
                       'org.serviio.pkg.Serviio',
                     ]

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
