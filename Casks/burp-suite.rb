cask 'burp-suite' do
  version '1.7.27'
  sha256 'eb215ee1a453634685d5ec302ccd9c07031869ca72c9f2cce10cc8dd6c9989a2'

  url "https://portswigger.net/burp/releases/download?product=free&version=#{version}&type=macosx"
  appcast 'https://portswigger.net/burp/freereleasesarchive',
          checkpoint: '90e7612ec2b3f962f086bb85b9e9402731b9cfbb367b30f09e24d12e54e63bc8'
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
