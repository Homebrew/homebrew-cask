cask 'filezilla' do
  if MacOS.version <= :mavericks
    version '3.24.1'
    sha256 '79f28c13820ffcb9e6fa4446a1a317a45fd91d6a67fb1a562d30443f1abe186e'
  else
    version '3.25.2'
    sha256 'bf5e491445fe92d0546c4baf00398be42bf6af5384a3c5b7e6c6b773640166cb'
  end

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: '6fabbc12cfe1f1d1cb6aa260fff01a0e1cb577da427ba517cab2ecca74e0ed7b'
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
