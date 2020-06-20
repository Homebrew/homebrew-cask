cask 'burp-suite' do
  version '2020.5.1'
  sha256 '7bdabf75f0d18f282621739496aceb26651d9b65f72f8ca30aa03e43e974958d'

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=MacOsx"
  appcast 'https://portswigger.net/burp/releases?initialTab=community'
  name 'Burp Suite'
  homepage 'https://portswigger.net/burp/'

  installer script: {
                      executable: 'Burp Suite Community Edition Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }

  postflight do
    set_ownership '/Applications/Burp Suite Community Edition.app'
    set_permissions '/Applications/Burp Suite Community Edition.app', 'a+rX'
  end

  uninstall delete: '/Applications/Burp Suite Community Edition.app'

  zap trash: '~/.BurpSuite'
end
