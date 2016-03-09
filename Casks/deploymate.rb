cask 'deploymate' do
  version '1.3.2'
  sha256 '697427a2257165e5c19bdb1f1c425cb659b721c07e2eba713cce8113abdc1e37'

  # amazonaws.com/deploymate was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deploymate/download/Deploymate#{version.delete('.')}.zip"
  appcast 'http://www.deploymateapp.com/deploymate-updates.xml',
          checkpoint: 'fce5317f2b0df5bc03b234b528e91e1a8661c2a4646c68dee8ee62466383df42'
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
