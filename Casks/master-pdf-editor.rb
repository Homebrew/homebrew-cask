cask 'master-pdf-editor' do
  version '5.3.22'
  sha256 'b7bcad1a8a6c550f69c4819d56c0123181e07ce68ecf154f0cd4d328b07eba7d'

  url 'https://code-industry.net/public/MasterPDFEditor.dmg'
  appcast 'https://code-industry.net/get-masterpdfeditor/'
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
