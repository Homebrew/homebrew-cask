cask 'burp-suite' do
  version '1.7.33'
  sha256 '2d272773154e28140753ad4065666e1ecafdf63cf3c5b097d23b7d6ad1e1560f'

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
