cask 'gitbook-editor' do
  version :latest
  sha256 :no_check

  url 'http://downloads.editor.gitbook.com/download/osx'
  name 'GitBook Editor'
  homepage 'https://www.gitbook.com/editor'

  app 'GitBook Editor.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gitbook-editor.sfl*',
                '~/Library/Saved Application State/gitbook-editor.savedState',
              ],
      trash:  [
                '~/Library/Application Support/gitbook-editor',
                '~/Library/Preferences/gitbook-editor.helper.plist',
                '~/Library/Preferences/gitbook-editor.plist',
                '~/GitBook',
              ]
end
