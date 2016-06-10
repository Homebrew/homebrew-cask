cask 'pgadmin4' do
  # note: "4" is not a version number, but indicates a different app (vs pgadmin3)
  version '1.0-beta1'
  sha256 'ba004dcedff2a5d9bcc02ba50b3b0b429cd05a0f2ceba962a8afbea9120448f2'

  # postgresql.org is the official download host per the vendor homepage
  url "https://ftp.postgresql.org/pub/pgadmin3/pgadmin4/v#{version}/osx/pgadmin4-#{version}.dmg"
  name 'pgAdmin4'
  homepage 'http://pgadmin.org'
  license :oss
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
