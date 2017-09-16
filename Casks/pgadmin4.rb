cask 'pgadmin4' do
  version '1.6'
  sha256 'b9b818617c55f738809769c448b2c7c7c39dab5bf2a62ec69067c770910b6f32'

  # ftp.postgresql.org was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg"
  name 'pgAdmin4'
  homepage 'https://www.pgadmin.org/'
  gpg "#{url}.sig", key_id: 'e0c4ceeb826b1fda4fb468e024adfaaf698f1519'

  app 'pgAdmin 4.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl',
                '~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState',
              ],
      trash:  [
                '~/.pgadmin',
                '~/Library/Preferences/org.pgadmin.pgadmin4.plist',
              ]
end
