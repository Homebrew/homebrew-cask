cask 'showyedge' do
  version '3.8.0'
  sha256 '19c19e8755bca3ef532ba8893d7f12f604b7b90fe93f0ad3b84134acf3290a33'

  # github.com/pqrs-org/ShowyEdge/ was verified as official when first introduced to the cask
  url "https://github.com/pqrs-org/ShowyEdge/releases/download/v#{version}/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'

  app 'ShowyEdge.app'
end
