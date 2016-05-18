cask 'bitwig-studio' do
  version '1.3.9'
  sha256 'c7fa7af1edec3f400f72abaef9f8e8e34eacca6065f375cad2f4031274682be9'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com'
  license :commercial

  auto_updates true

  app 'Bitwig Studio.app'
end
