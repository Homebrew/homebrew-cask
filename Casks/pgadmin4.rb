cask 'pgadmin4' do
  version '2.0'
  sha256 '918d0fd4d9c743e44bdb7e5c9d96cb6c759c6c3aa49e5ddb6301c3ce49000c74'

  # ftp.postgresql.org was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg"
  name 'pgAdmin4'
  homepage 'https://www.pgadmin.org/'
  gpg "#{url}.sig", key_id: 'e0c4ceeb826b1fda4fb468e024adfaaf698f1519'

  app 'pgAdmin 4.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl*',
                '~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState',
              ],
      trash:  [
                '~/.pgadmin',
                '~/Library/Preferences/org.pgadmin.pgadmin4.plist',
              ]
end
