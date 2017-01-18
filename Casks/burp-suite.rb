cask 'burp-suite' do
  version '1.7.16'
  sha256 '9aa48e63d66e701a17db10bd47f12c899efc68213f4d32d29472e8ddd857fa07'

  url "https://portswigger.net/Burp/Releases/Download?productId=100&version=#{version}&type=MacOsx"
  name 'Burp Suite'
  homepage 'https://portswigger.net/burp/'

  installer script: {
                      executable: 'Burp Suite Free Edition Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       %w[-q],
                      sudo:       true,
                    }

  uninstall delete: '/Applications/Burp Suite Free Edition.app'

  zap delete: '~/.BurpSuite'

  caveats do
    depends_on_java
  end
end
