cask :v1 => 'pgadmin3' do
  # note: "3" is not a version number, but indicates a different vendor
  version '1.20.0'
  sha256 '0712106cca16240db9962214384874c108fe8397d0c418a79dfb3639f8f140da'

  url "http://ftp.postgresql.org/pub/pgadmin3/release/v#{version}/osx/pgadmin3-#{version}.dmg"
  gpg "#{url}.sig",
      :key_id => '698F1519'
  homepage 'http://pgadmin.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'pgAdmin3.app'
end
