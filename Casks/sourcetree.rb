cask 'sourcetree' do
  version '2.7.2b'
  sha256 '13a84f91daf777921c8535885b0f9a53728c82ff714d96fa17f07177b9c3cb7b'

  # atlassian.com/software/sourcetree was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip"
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true

  app 'Sourcetree.app'
  binary "#{appdir}/Sourcetree.app/Contents/Resources/stree"

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2',
            quit:      'com.torusknot.SourceTreeNotMAS'

  zap trash: [
               '~/Library/Application Support/SourceTree',
               '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
               '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist',
               '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist',
               '~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState',
             ]
end
