cask 'electorrent' do
  version '2.3.1'
  sha256 '31bd50f59a77dd78b13fb951e43c0e5bb38ae5faa08908cae23e86cee2b465db'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
