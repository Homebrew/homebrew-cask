cask 'burp-suite' do
  version '1.7.19'
  sha256 '0ee69e71319c6279f7c47baf1b9a3000350b3349a854374191bd76cd7ad7e6fa'

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
