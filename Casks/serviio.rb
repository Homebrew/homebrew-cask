cask 'serviio' do
  version '2.0'
  sha256 '69ca6080fc92d147ee9c6d2bc7d71d9548e5770762e0e73066d4ac82557fbc6e'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  appcast 'https://www.serviio.org/download'
  name 'Serviio'
  homepage 'https://serviio.org/'

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
