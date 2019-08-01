cask 'pgadmin4' do
  version '4.11'
  sha256 'de4dd1ed04b606b39c0f4aefcf606852c5443ceac815c9f23ed64d1f0408c217'

  # ftp.postgresql.org was verified as official when first introduced to the cask
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
