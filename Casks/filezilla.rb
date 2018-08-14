cask 'filezilla' do
  version '3.35.2'
  sha256 'e283486e618e929ff3fd5f0aa4fff24c41f39eaa5fffe7bcb8b6d631e36739ad'

  url "https://download.filezilla-project.org/client/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://filezilla-project.org/versions.php?type=client'
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
