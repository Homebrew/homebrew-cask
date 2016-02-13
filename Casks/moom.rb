cask 'moom' do
  version '3.2.3'
  sha256 'e8f2e837cfe401d188b5ec66cbdcd97d30c6de0abecbe3df0a1f707c10ecca30'

  url 'https://manytricks.com/download/moom'
  appcast 'https://manytricks.com/moom/appcast.xml',
          checkpoint: '276ef521fb168909c26372ba6f56befc20bc8b4d0b8762d87284cb1157f1bd0c'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'
  license :commercial

  auto_updates true

  app 'Moom.app'

  zap delete: [
                '~/Library/Preferences/com.manytricks.Moom.plist',
                '~/Library/Application Support/Many Tricks',
              ]
end
