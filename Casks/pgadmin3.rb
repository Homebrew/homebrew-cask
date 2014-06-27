class Pgadmin3 < Cask
  # note: "3" is not a version number, but indicates a different vendor
  version '1.18.1'
  sha256 '6fe924168c7a8ee9224527fcafc3e612de60c011a27dc44b8293401ff346627d'

  url 'http://ftp.postgresql.org/pub/pgadmin3/release/v1.18.1/osx/pgadmin3-1.18.1.dmg'
  homepage 'http://pgadmin.org'

  link 'pgAdmin3.app'
end
