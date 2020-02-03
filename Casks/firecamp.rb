cask 'firecamp' do
  version '0.9.3'
  sha256 '13dfe63d25c32425cdf1332ec7a6bd78dd0816129df304b9b2b6f14d4be75791'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
