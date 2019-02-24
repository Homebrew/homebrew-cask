cask 'master-pdf-editor' do
  version '5.3.16'
  sha256 '8b36bff13d5a8ef8fafe16962de2c1c271e656a47693ff3de7f13e0f846a33c9'

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
