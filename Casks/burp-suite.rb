cask 'burp-suite' do
  version '1.7.32'
  sha256 'a9a52bdf51bb7585f92b9b437512de5de7b00dd981cc58f4a9173c32bace7195'

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=macosx"
  appcast 'https://portswigger.net/burp/releasesarchive/community',
          checkpoint: '1587f7a55e88b9a40dfa61d3dfdf0022835545f1fcfd34021f2731445c4fb041'
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
