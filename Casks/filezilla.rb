cask 'filezilla' do
  if MacOS.version <= :snow_leopard
    version '3.8.1'
    sha256 '86c725246e2190b04193ce8e7e5ea89d5b9318e9f20f5b6f9cdd45b6f5c2d283'
  else
    version '3.24.0'
    sha256 '6f57b0c91d0f20d545cd854855d35dcb1b088bc9e2c73cfaca4984bda93df5a9'
  end

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: '4b4bb69191e36ac2e2f36d306840e496435f345683d74bf348c9ef95ce818f3e'
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
