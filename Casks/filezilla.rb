cask 'filezilla' do
  version '3.33.0'
  sha256 '8d53ed9860d8e4cc97e2e6b2aeaea137d9f6fc66e5477f763af1d0cb55ca593d'

  url "https://download.filezilla-project.org/client/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://filezilla-project.org/versions.php?type=client',
          checkpoint: '9fdc9f317ab2e5212516f3c78078ca3d558f17a0e9a78bcd27ba7a807cce1036'
  name 'FileZilla'
  homepage 'https://filezilla-project.org/'

  depends_on macos: '>= :mavericks'

  app 'FileZilla.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.filezilla.sfl*',
               '~/Library/Saved Application State/de.filezilla.savedState',
               '~/Library/Preferences/de.filezilla.plist',
               '~/.config/filezilla',
             ]
end
