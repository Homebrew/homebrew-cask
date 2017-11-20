cask 'burp-suite' do
  version '1.7.29'
  sha256 'ec475c8cf7e4b70f73ff53b3e5630bf9adcda033cb05552e266b54ffda514b2e'

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=macosx"
  appcast 'https://portswigger.net/burp/releasesarchive/community',
          checkpoint: 'c68f717624e967052f5d68880152348f001eab592ffa5d677efa413f1d7a8e31'
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
