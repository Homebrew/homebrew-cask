cask 'foobar2000' do
  version '2.1.55'
  sha256 '77ed24a9aab8398c326e4f432d7aefc3a6069fa822536e0a64867e18f1180104'

  url "https://www.foobar2000.org/files/b238d40de415d3afc284eee48712521d/foobar2000-v#{version}.dmg"
  name 'foobar2000'
  homepage 'https://www.foobar2000.org/'

  app 'foobar2000.app'
end
