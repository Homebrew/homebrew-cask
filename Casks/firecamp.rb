cask 'firecamp' do
  version '1.2.12'
  sha256 '5aa55cbc65093e007a1adadb573429a5b82c015be236b28e2eba9310a6543a27'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
