cask 'pgadmin4' do
  version '1.2'
  sha256 '8cc23a9e2f2525ea69a77efef9e536a629417a30df42b6179cac1dc975879399'

  # ftp.postgresql.org was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin3/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg"
  name 'pgAdmin4'
  homepage 'https://pgadmin.org/'
  gpg "#{url}.sig", key_id: 'e0c4ceeb826b1fda4fb468e024adfaaf698f1519'

  app 'pgAdmin 4.app'

  zap delete: [
                '~/.pgadmin',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl',
                '~/Library/Preferences/org.pgadmin.pgAdmin 4.plist',
                '~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState',
              ]
end
