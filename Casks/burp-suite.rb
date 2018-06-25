cask 'burp-suite' do
  version '1.7.34'
  sha256 'e2a0eeb172bc71aaa9fc9260a26c5f64ae33811764543f2e542f0706970dfd28'

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=macosx"
  appcast 'https://portswigger.net/burp/releasesarchive/community'
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
