cask 'pgadmin4' do
  version '4.15'
  sha256 'b3eb87b0fd46cfb92d242f48864baca75be9701ffc4c2c2bb94e053402df99d8'

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
