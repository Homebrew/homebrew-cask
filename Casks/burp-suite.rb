cask 'burp-suite' do
  version '1.7.28'
  sha256 'ba1aad6c20104db4d14d4bc6b48302d4099ffac3180942b0b090831b25df76f8'

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=macosx"
  appcast 'https://portswigger.net/burp/releasesarchive/community',
          checkpoint: '3689c040408fdc1cbd6c302f00b65a8f04494c091da120f5a2300cac68395bd3'
  name 'Burp Suite'
  homepage 'https://portswigger.net/burp/'

  installer script: {
                      executable: 'Burp Suite Community Edition Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }

  uninstall delete: '/Applications/Burp Suite Community Edition.app'

  zap trash: '~/.BurpSuite'
end
