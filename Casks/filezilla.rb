cask 'filezilla' do
  version '3.28.0'
  sha256 'dda2556ea2a5b92b11284fcfd21ec0f4555219916fe7f723fac2fda0c2506025'

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: '4010f5aa4d8cc14bfa1ed4cea4f901326172b04c921b066ac5e0ac9ca28c821f'
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
