cask 'electorrent' do
  version '2.0.1'
  sha256 'd2f5ba39393d837327d3f48b96945c270c8db7d64da7797c91e16e4755a9f94b'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '74414ca79f9d73c8845ea80e8b600b1805cc19aaf928c6f38f7bd80d6e7f7733'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
