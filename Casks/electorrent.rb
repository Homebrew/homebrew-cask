cask 'electorrent' do
  version '2.5.1'
  sha256 '0aad8a012c3bffb0e1ecf1a339206b36e84de15dcb7f36ca7a33ce649fd45efb'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
