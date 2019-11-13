cask 'firecamp' do
  version '0.7.0-rc-1'
  sha256 '6a4e68e38e17c6a88972408cbcc9ae321b29d60e784bf5b751a07b5821ce2200'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
