cask 'filezilla' do
  version '3.27.0.1'
  sha256 'c1e1d5c3d749a5e6158dcd02e0116626e702d08ba649781ee6fc50f99c33d50d'

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: '5af71e56a15ffdb0c7cbaebe78779d03d0492ce5dbc4a45d10ee39a48133d6c5'
  name 'FileZilla'
  homepage 'https://filezilla-project.org/'

  depends_on macos: '>= :mavericks'

  app 'FileZilla.app'

  zap delete: [
                '~/.config/filezilla',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.filezilla.sfl',
                '~/Library/Preferences/de.filezilla.plist',
                '~/Library/Saved Application State/de.filezilla.savedState',
              ]
end
