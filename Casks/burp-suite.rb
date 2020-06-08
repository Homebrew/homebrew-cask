cask 'burp-suite' do
  version '2020.5'
  sha256 '489afa0d0ce7b5d4998278ae15bd19943d0f43a1692fece47da6f2a7effe28d1'

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
