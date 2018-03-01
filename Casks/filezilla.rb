cask 'filezilla' do
  version '3.31.0'
  sha256 '188e8d9af77dbcdd6176fb7eeca19083fff6f22e41331a1927c78c73c1faa769'

  url "https://download.filezilla-project.org/client/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://filezilla-project.org/versions.php?type=client',
          checkpoint: '9b1a081a82ba46468494ab610ca341f26790ccc431193bda585571cf9ca722e0'
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
