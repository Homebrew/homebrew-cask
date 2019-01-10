cask 'pgadmin4' do
  version '4.0'
  sha256 'df943e3bc74470ca65c75182ffbe80caba7464c8b39c3c7750412359412f070e'

  # ftp.postgresql.org was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg"
  name 'pgAdmin4'
  homepage 'https://www.pgadmin.org/'

  app 'pgAdmin 4.app'

  zap trash: [
               '~/.pgadmin',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl*',
               '~/Library/Preferences/org.pgadmin.pgadmin4.plist',
               '~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState',
             ]
end
