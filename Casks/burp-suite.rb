cask 'burp-suite' do
  version '1.7.21'
  sha256 '54160c183789824d9a75d5dce61990299bfbd2d3167a886b64edffcebef37591'

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
