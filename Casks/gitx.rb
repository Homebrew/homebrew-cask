cask 'gitx' do
  version '0.7.1'
  sha256 'd28a2cc1a1d0b83908e7b7fa47706c4e4fab3570277b2a7eae0324b1d86a4b87'

  url 'http://frim.frim.nl/GitXStable.app.zip'
  appcast 'http://gitx.frim.nl/Downloads/appcast.xml',
          checkpoint: '55accf881c6e6bc22e4c30d394e7d1b51c7f7b2de4b1a746f5fdeae742311ac9'
  name 'GitX'
  homepage 'http://gitx.frim.nl/'
  license :gpl

  conflicts_with cask: %w[
                         laullon-gitx
                         rowanj-gitx
                       ]

  app 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nl.frim.gitx.sfl',
                '~/Library/Caches/nl.frim.GitX',
                '~/Library/Preferences/nl.frim.GitX.plist',
                '~/Library/Saved Application State/nl.frim.GitX.savedState',
              ]
end
