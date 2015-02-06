cask :v1 => 'doxygen' do
  version '1.8.9.1'
  sha256 '6d50c7374b6897aabf41a96aee21bcd993d3258e46f7954408b5a1bd436735eb'

  url "ftp://ftp.stack.nl/pub/users/dimitri/Doxygen-#{version}.dmg"
  name 'Doxygen'
  homepage 'http://www.stack.nl/~dimitri/doxygen/'
  license :gpl

  app 'Doxygen.app'
end
