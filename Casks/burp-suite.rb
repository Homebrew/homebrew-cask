cask 'burp-suite' do
  version '2020.2.1'
  sha256 'aab90251e1d2f44089926db582dd2f1107926d1df8d75a7db6f9ab7eee6f2c29'

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
