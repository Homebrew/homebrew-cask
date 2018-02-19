cask 'master-pdf-editor' do
  version '4.3.83'
  sha256 'c46f891c8de779ea404f7a15984fcd2de0948b5625c6e898171350005108778f'

  url 'https://code-industry.net/public/MasterPDFEditor.dmg'
  appcast 'https://code-industry.net/get-masterpdfeditor/',
          checkpoint: 'fe58ad8c73ddb06671dffc9ebacccadf93ace7ddf27ceaf336c115e567651046'
  name 'Master PDF Editor'
  homepage 'https://code-industry.net/masterpdfeditor/'

  auto_updates true

  app 'Master PDF Editor.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.code-industry.masterpdfeditor3.sfl*',
               '~/Library/Preferences/net.code-industry.Master PDF Editor.plist',
               '~/Library/Saved Application State/net.code-industry.MasterPDFEditor3.savedState',
             ]
end
