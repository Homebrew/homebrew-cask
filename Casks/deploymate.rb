cask 'deploymate' do
  version '1.3.4'
  sha256 '08842ecba6773b0caba59296b415e7fd8595ba55e8c8bb686bdd11928350c8eb'

  # amazonaws.com/deploymate was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deploymate/download/Deploymate#{version.no_dots}.zip"
  appcast 'http://www.deploymateapp.com/deploymate-updates.xml',
          checkpoint: 'a112f2107f7ed54b36a5a45e20da34d3a07ea19f97b3c925dec5568f8ca64204'
  name 'Deploymate'
  homepage 'http://www.deploymateapp.com'

  app 'Deploymate.app'

  zap delete: [
                '~/Library/Caches/com.ivanvasic.deploymate',
                '~/Library/Preferences/com.ivanvasic.deploymate.plist',
                '~/Library/Preferences/com.ivanvasic.deploymate.LSSharedFileList.plist',
              ]
end
