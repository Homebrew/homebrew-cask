cask :v1 => 'pgadmin3' do
  # note: "3" is not a version number, but indicates a different vendor
  version '1.20.0'
  sha256 '0712106cca16240db9962214384874c108fe8397d0c418a79dfb3639f8f140da'

  url "http://ftp.postgresql.org/pub/pgadmin3/release/v#{version}/osx/pgadmin3-#{version}.dmg"
  gpg "#{url}.sig",
      :key_id => 'e0c4ceeb826b1fda4fb468e024adfaaf698f1519'
  name 'pgAdmin'
  homepage 'http://pgadmin.org'
  license :oss

  app 'pgAdmin3.app'
end
