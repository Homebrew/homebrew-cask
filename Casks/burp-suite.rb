cask 'burp-suite' do
  version '1.7.20'
  sha256 'ac576e85e7e02b6b4bd182198dac29289c171d6e5bf0dffafe1321b67a066364'

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
