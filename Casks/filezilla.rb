cask 'filezilla' do
  if MacOS.version <= :mavericks
    version '3.24.1'
    sha256 '79f28c13820ffcb9e6fa4446a1a317a45fd91d6a67fb1a562d30443f1abe186e'
  else
    version '3.26.1'
    sha256 '02790ebee071979ba6180b3b99b4a09cced9894e8efad57559fbdb6756d6a081'
  end

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: '7776c8cbd16431581f155ae05fc3edfa36b7c0db5ec5de8db438078bba8a4b37'
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
