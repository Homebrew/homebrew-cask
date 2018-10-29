cask 'sourcetree' do
  version '3.0_200'
  sha256 'ec5962fb17edcd4d67c6c486b3cdb7dcfe7ddc38c089f726cb9a7b1d0eff2d78'

  # atlassian.com/software/sourcetree was verified as official when first introduced to the cask
  url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastGroup1.xml'
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
