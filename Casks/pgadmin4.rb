cask 'pgadmin4' do
  version '4.21'
  sha256 'd88a7799431824452afa7aa4a06020b9ffca276e66d67d740c1e6d69bae3a2a4'

  # ftp.postgresql.org/ was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg"
  appcast 'https://ftp.postgresql.org/pub/pgadmin/pgadmin4/'
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
