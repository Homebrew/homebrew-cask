cask 'deploymate' do
  version '1.2.9'
  sha256 '0e2be785a35b9264791ad8bf5a3580b61cff446c0f0fa498ff3e12faaf9ce10e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/deploymate/download/Deploymate#{version.delete('.')}.zip"
  appcast 'http://www.deploymateapp.com/deploymate-updates.xml',
          checkpoint: 'afc087e83be77502d67c5fbe237fbb815a651ed405081ff656106a61904a34f1'
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
