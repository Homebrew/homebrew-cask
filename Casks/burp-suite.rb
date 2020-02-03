cask 'burp-suite' do
  version '2.1.07'
  sha256 '6212892e0a775d04514401449dec0eb18c96c92d5ae1ea5a2e00160be0af1299'

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=macosx"
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
