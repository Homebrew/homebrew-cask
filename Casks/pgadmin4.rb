cask 'pgadmin4' do
  version '1.1'
  sha256 '6ecef5911e3a1d14511f4198e2ab825bef14b15dee72dc2a0d82738bfaf8b5f8'

  # ftp.postgresql.org was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin3/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg"
  name 'pgAdmin4'
  homepage 'https://pgadmin.org/'
  gpg "#{url}.sig",
      key_id: 'e0c4ceeb826b1fda4fb468e024adfaaf698f1519'

  app 'pgAdmin 4.app'

  zap delete: [
                '~/.pgadmin',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl',
                '~/Library/Preferences/org.pgadmin.pgAdmin 4.plist',
                '~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState',
              ]
end
