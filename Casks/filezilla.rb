cask 'filezilla' do
  version '3.24.1'
  sha256 '79f28c13820ffcb9e6fa4446a1a317a45fd91d6a67fb1a562d30443f1abe186e'

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: '9aef92172bbc03270c5097accc8aa56af29a23ba59a8a7e5d19073f002f7824e'
  name 'FileZilla'
  homepage 'https://filezilla-project.org/'

  app 'FileZilla.app'

  zap delete: [
                '~/.config/filezilla',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.filezilla.sfl',
                '~/Library/Saved Application State/de.filezilla.savedState',
                '~/Library/Preferences/de.filezilla.plist',
              ]
end
