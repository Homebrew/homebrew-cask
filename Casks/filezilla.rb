cask 'filezilla' do
  version '3.38.1'
  sha256 '250dfd5e8f4c97bf0baf762251cc328f60b2da4a0dd1c316d67a45c1f1349cf7'

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
