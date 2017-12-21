cask 'burp-suite' do
  version '1.7.30'
  sha256 'abca4f8aaaf07b58692f3b12c5b3dd2e1d3e6e655c17691f99644bf799465f4d'

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=macosx"
  appcast 'https://portswigger.net/burp/releasesarchive/community',
          checkpoint: '76124f8b68ee23f1ed61425318e497fc48a61ce4d56633ad3070ecb2499bbf6c'
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
