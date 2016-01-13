cask 'showyedge' do
  version '3.0.0'
  sha256 '4a6b16970cb77a9b3e77031e74cf8907a09106ffff1e430eec9c41790579008c'

  url "https://pqrs.org/osx/ShowyEdge/files/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml',
          :checkpoint => 'd52c078d29a9c573b7a0fb57a06c58cd9166b5d20e2027c87e2ada38e7247f0b'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'
  license :public_domain

  app 'ShowyEdge.app'
end
