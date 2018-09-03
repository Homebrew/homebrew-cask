cask 'pros-editor' do
  version '1.30.0'
  sha256 'dcc9764c1a3ab3f1c6ac0b9482b09d4f23ebf67e7fc5191ff3c3cb3a7290e29c'

  # github.com/purduesigbots/atom was verified as official when first introduced to the cask
  url "https://github.com/purduesigbots/atom/releases/download/v#{version}/pros-editor-mac.zip"
  appcast 'https://github.com/purduesigbots/atom/releases.atom'
  name 'PROS Editor'
  homepage 'https://pros.cs.purdue.edu/'

  depends_on cask: 'pros'
  depends_on formula: 'cquery'

  app 'PROS Editor.app'
  binary "#{appdir}/PROS Editor.app/Contents/Resources/app/apm/bin/apm", target: 'pros-apm'
  binary "#{appdir}/PROS Editor.app/Contents/Resources/app/atom.sh", target: 'pros-editor'

  zap trash: [
               '~/.pros-editor',
               '~/Library/Application Support/PROS',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.purdue.cs.pros.ide.sfl*',
               '~/Library/Caches/edu.purdue.cs.pros.ide',
               '~/Library/Preferences/edu.purdue.cs.pros.ide.helper.plist',
               '~/Library/Preferences/edu.purdue.cs.pros.ide.plist',
               '~/Library/Saved Application State/edu.purdue.cs.pros.ide.savedState',
             ]
end
