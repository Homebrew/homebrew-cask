cask 'firecamp' do
  version '0.6.7'
  sha256 '984322a9f32c0afd0f443df5cf2699ebd6500b05bfa46df7c0f4e01520a58032'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
