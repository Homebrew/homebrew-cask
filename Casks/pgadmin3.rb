cask :v1 => 'pgadmin3' do
  # note: "3" is not a version number, but indicates a different vendor
  version '1.18.1'
  sha256 '6fe924168c7a8ee9224527fcafc3e612de60c011a27dc44b8293401ff346627d'

  url "http://ftp.postgresql.org/pub/pgadmin3/release/v#{version}/osx/pgadmin3-#{version}.dmg"
  gpg "#{url}.sig",
      :key_id => '96020e041a19643b'
  homepage 'http://pgadmin.org'
  license :unknown

  app 'pgAdmin3.app'
end
