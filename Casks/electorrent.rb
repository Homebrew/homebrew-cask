cask 'electorrent' do
  version '2.1.5'
  sha256 '2e54d9522624200e7d15a00662f9d440383b4d3d018378464689b7a37865cd04'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '97a48528bbbbf226deccbafb52d9dab3ec370ee0a71e5678c827c8a49cb4eb67'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
