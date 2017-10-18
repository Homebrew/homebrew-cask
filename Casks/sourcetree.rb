cask 'sourcetree' do
  version '2.6.3a'
  sha256 '4b951e2d113a2ca5f8bb88be06b64c9390eae13b4339f983b4a0867c602dca53'

  # atlassian.com/software/sourcetree was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip"
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true

  app 'Sourcetree.app'
  binary "#{appdir}/Sourcetree.app/Contents/Resources/stree"

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2',
            quit:      'com.torusknot.SourceTreeNotMAS'

  zap delete: [
                '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
                '~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState',
              ],
      trash:  [
                '~/Library/Application Support/SourceTree',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist',
              ]
end
