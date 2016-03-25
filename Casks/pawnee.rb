cask 'pawnee' do
  version '1.0.0'
  sha256 'b8f9b77f37bc6fcc2a68c26f90e01a60c1d150e1866fa32c90d0daca260fde13'

  url "http://johan.satge.io/pawnee/pawnee-#{version}.zip"
  name 'Pawnee'
  homepage 'http://johan.satge.io/pawnee'
  license :mit

  app 'Pawnee.app'
end
