cask 'master-pdf-editor' do
  version '4.3.89'
  sha256 '5537b89aa8ae54f3c642b0d94fc6244c6238bb293af3757d0c89d3d4250b4776'

  url 'https://code-industry.net/public/MasterPDFEditor.dmg'
  appcast 'https://code-industry.net/get-masterpdfeditor/',
          checkpoint: '6466aa8fedfdd93b4f8b1d0dea2d49a05c4eeaae53a7fe791503523f9d5b3d58'
  name 'Master PDF Editor'
  homepage 'https://code-industry.net/masterpdfeditor/'

  auto_updates true

  app 'Master PDF Editor.app'

  zap trash: [
               '~/Library/Application Support/Master PDF Editor',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.code-industry.masterpdfeditor3.sfl*',
               '~/Library/Preferences/net.code-industry.Master PDF Editor.plist',
               '~/Library/Saved Application State/net.code-industry.MasterPDFEditor3.savedState',
             ]
end
