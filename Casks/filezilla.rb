cask 'filezilla' do
  version '3.36.0'
  sha256 '878a4d86756eaa193a318a0b8021c8827301d75e33f4d0bd4ca8b8084b7b2431'

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
