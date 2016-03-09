cask 'pgadmin3' do
  # note: "3" is not a version number, but indicates a different vendor
  version '1.22.0'
  sha256 'b2819efad4f835ee48251a330f43fd701cf2c45d895de01cb809b5931fc162b6'

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
