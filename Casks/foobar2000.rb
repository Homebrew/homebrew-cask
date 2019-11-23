cask 'foobar2000' do
  version '2.1.55'
  sha256 'c3841ab4fbdb8ab36c60bde3607387cb74311e70070660401183fee47e0cf6f3'

  url "https://www.foobar2000.org/files/b238d40de415d3afc284eee48712521d/foobar2000-v#{version}.dmg"
  name 'foobar2000'
  homepage 'https://www.foobar2000.org/'

  app 'foobar2000.app'
end
