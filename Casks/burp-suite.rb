cask 'burp-suite' do
  version '1.7.26'
  sha256 '859b1625e411c58b6b6d64f8e7516bc74449849ceddc082622f8cfa4ddffe36d'

  url "https://portswigger.net/burp/releases/download?product=free&version=#{version}&type=macosx"
  appcast 'https://portswigger.net/burp/freereleasesarchive',
          checkpoint: '6dbcb76fdab04c8abbf115d2416993b0a274a6d1a0195701c9673a36341706e7'
  name 'Burp Suite'
  homepage 'https://portswigger.net/burp/'

  installer script: {
                      executable: 'Burp Suite Free Edition Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }

  uninstall delete: '/Applications/Burp Suite Free Edition.app'

  zap trash: '~/.BurpSuite'
end
