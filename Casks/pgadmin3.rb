cask 'pgadmin3' do
  # note: "3" is not a version number, but indicates a different vendor
  version '1.22.1'
  sha256 'fa34b5baf09cf597850101b2806fdf80490c88d6fbf652da3750856423051603'

  # postgresql.org is the official download host per the vendor homepage
  url "https://ftp.postgresql.org/pub/pgadmin3/release/v#{version}/osx/pgadmin3-#{version}.dmg"
  name 'pgAdmin'
  homepage 'http://pgadmin.org'
  license :oss
  gpg "#{url}.sig",
      key_id: 'e0c4ceeb826b1fda4fb468e024adfaaf698f1519'

  app 'pgAdmin3.app'

  zap delete: [
                '~/Library/Preferences/pgadmin3 Preferences',
                '~/Library/Saved Application State/org.postgresql.pgadmin.savedState',
              ]
end
