cask 'filezilla' do
  if MacOS.version <= :mavericks
    version '3.24.1'
    sha256 '79f28c13820ffcb9e6fa4446a1a317a45fd91d6a67fb1a562d30443f1abe186e'
  else
    version '3.25.1'
    sha256 '76c1b583d2ddd1526bb5fa55f8c109b3172e5334cf5d848f04db039da35e5bc0'
  end

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: '0f23e3c46d6ac5c13761ffc1fa255ba0bcd163537f245efbd3907081078fc56c'
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
