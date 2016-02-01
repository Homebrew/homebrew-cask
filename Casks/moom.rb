cask 'moom' do
  version '3.2.3'
  sha256 'e8f2e837cfe401d188b5ec66cbdcd97d30c6de0abecbe3df0a1f707c10ecca30'

  url 'https://manytricks.com/download/moom'
  appcast 'https://manytricks.com/moom/appcast.xml',
          checkpoint: '9d25269c3dfe53866ec4dc2622566f628110472b3c980b0582d24f691a02205c'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'
  license :commercial

  app 'Moom.app'

  zap delete: [
                '~/Library/Preferences/com.manytricks.Moom.plist',
                '~/Library/Application Support/Many Tricks',
              ]
end
