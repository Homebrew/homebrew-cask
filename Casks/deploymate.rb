cask 'deploymate' do
  version '1.3.5'
  sha256 '1f8b91e74a2c02edee21b4a2bbf938b4dfc308f771d7ef794cb54cb1c4d34f1c'

  # amazonaws.com/deploymate was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deploymate/download/Deploymate#{version.no_dots}.zip"
  appcast 'http://www.deploymateapp.com/deploymate-updates.xml',
          checkpoint: 'cdb5d425339c3776d0eb2ef61069180434a2ab04040734362e626d3097ef7e63'
  name 'Deploymate'
  homepage 'http://www.deploymateapp.com/'

  app 'Deploymate.app'

  zap delete: [
                '~/Library/Caches/com.ivanvasic.deploymate',
                '~/Library/Preferences/com.ivanvasic.deploymate.plist',
                '~/Library/Preferences/com.ivanvasic.deploymate.LSSharedFileList.plist',
              ]
end
