cask 'foobar2000' do
  version '2.1.55'
  sha256 'e6d5233be0ed74f5900d5e5fc57fd271fcb57813b56b3ee3f9baa6daf7623a59'

  url "https://www.foobar2000.org/files/b238d40de415d3afc284eee48712521d/foobar2000-v#{version}.dmg"
  name 'foobar2000'
  homepage 'https://www.foobar2000.org/'

  app 'foobar2000.app'
end
