cask 'burp-suite' do
  version '1.7.24'
  sha256 '4edfbf71499ffbaa5baaac04db6eed995537ca39da98928e649e6922abff1f20'

  url "https://portswigger.net/burp/releases/download?product=free&version=#{version}&type=macosx"
  appcast 'https://portswigger.net/burp/freereleasesarchive',
          checkpoint: '11a60e0ad23663faae4f0626e99c9bec1bc13c148339c131563987df48c631d1'
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
