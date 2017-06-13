cask 'serviio' do
  version '1.8'
  sha256 '96b71ae837bf83bbb19b3e7d94227e9a4f687e53d9e0b06ff8970cf096f98905'

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

  zap delete: [
                '/Library/Application Support/Serviio',
                '/private/var/log/serviio',
                '~/Library/Application Support/CrashReporter/Serviio-Console Helper_*.plist',
                '~/Library/Application Support/Serviio-Console-Wrapper',
                '~/Library/Caches/Serviio-Console-Wrapper',
                '~/Library/Preferences/org.serviio.serviio-web-console.plist',
                '~/Library/Saved Application State/org.serviio.serviio-web-console.savedState',
              ]
end
