cask 'electorrent' do
  version '2.1.8'
  sha256 '2d7e5c2ab236673aadac42d2ea53ea27de00f6259e56d94c3674325deb6f2d3b'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '78f95f9187aa020953f1673dd39c97f2782f5109b1fca22263511691abd79c15'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
