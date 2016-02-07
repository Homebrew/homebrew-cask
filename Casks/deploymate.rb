cask 'deploymate' do
  version '1.3.0'
  sha256 'efaa7419c90041420a16fb222bc8fe534302ce245cb958f2eddcb8fdb6682f81'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/deploymate/download/Deploymate#{version.delete('.')}.zip"
  appcast 'http://www.deploymateapp.com/deploymate-updates.xml',
          checkpoint: 'e50a4e4b51c525f30452d09033e669c2c5c78817997fc4d81ebaa77be1ea7cd5'
  name 'Deploymate'
  homepage 'http://www.deploymateapp.com'
  license :commercial

  app 'Deploymate.app'

  zap delete: [
                '~/Library/Caches/com.ivanvasic.deploymate',
                '~/Library/Preferences/com.ivanvasic.deploymate.plist',
                '~/Library/Preferences/com.ivanvasic.deploymate.LSSharedFileList.plist',
              ]
end
