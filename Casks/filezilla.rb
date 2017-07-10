cask 'filezilla' do
  version '3.26.2'
  sha256 'c5028031ac3eb9ae2ae9cb2a16f0931b74dd2396f04fda1ec67374b692835750'

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: '08c71a0a385d1d2295058dc6cb811eae826b9a5a36ac1d026e1e479e664231fb'
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
