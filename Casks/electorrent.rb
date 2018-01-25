cask 'electorrent' do
  version '2.1.11'
  sha256 'aa9d08dbfcb0ad0db13c7bc48f6edfc22b7d4ee38fa58e797fe0a9596ffdb8b7'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '29d34fd944b71d90ac251f0ee91a1b094ea298a6b1db415bbbbdb3ca106e067d'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
