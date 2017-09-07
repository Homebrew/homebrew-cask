cask 'filezilla' do
  version '3.27.1'
  sha256 'd6d0bab8f423ff5a680617143ba880555e39e0573f4f4e84ea7c81b5083a0a51'

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: '0bef9c8bd28e236bb1743362ba025994d252d306f7632e0416902f7c3773e043'
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
