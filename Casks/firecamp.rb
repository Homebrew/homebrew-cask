cask 'firecamp' do
  version '0.6.11'
  sha256 '5c3991eedb5c5da41aefc50ed87d02214f153de432dfdef9fec7e59e80603839'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
