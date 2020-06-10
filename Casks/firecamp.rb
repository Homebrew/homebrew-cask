cask 'firecamp' do
  version '1.2.8'
  sha256 '0726ad2b83bb8e3cce47476111c69dc9689a09ee3695712dd7991a228d57ad03'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
