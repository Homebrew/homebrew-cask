cask 'firecamp' do
  version '1.2.6'
  sha256 '6bfc7e097a73f862b493f1c62711aca0b476e81fbbbe1c89f8b1b812a7369bf7'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
