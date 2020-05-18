cask 'burp-suite' do
  version '2020.4.1'
  sha256 'dc5e2c9d8e663246c90f63a1ab9fa72b705c99f2f54885dfdc0b4084c85c2fa7'

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
