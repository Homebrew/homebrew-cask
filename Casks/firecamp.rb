cask 'firecamp' do
  version '1.4.2'
  sha256 '4c9239b8c41b7896309dad6d292722023c846799b10d5624ebb90dc303fff5cb'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/downloads/'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
