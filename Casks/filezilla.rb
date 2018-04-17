cask 'filezilla' do
  version '3.32.0'
  sha256 '97d1fc473fadbf4f63df5941f8ad3f04f59d95ba61dce206c01c36f4a8499aa8'

  url "https://download.filezilla-project.org/client/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://filezilla-project.org/versions.php?type=client',
          checkpoint: '69a64a1c8fdf110662adeed59998ccf3c22ceeb13a2b65d6b6e5b31b9820d26a'
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
