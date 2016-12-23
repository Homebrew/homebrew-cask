cask 'mumble' do
  version '1.2.18'
  sha256 'cd9d3124d76c15f5b77246d790a3f18346695c82c25c73fc9d6b2dd8e5ee94b9'

  # github.com/mumble-voip/mumble was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom',
          checkpoint: 'bcdca125e43adc1b3351c85ca43b0df5a58f21d42210ce7fe2300b267d1a9fe3'
  name 'Mumble'
  homepage 'https://wiki.mumble.info/wiki/Main_Page'
  gpg "#{url}.sig", key_id: '3bd0eca5925319af89c25865b585609c5a2be0c1'

  app 'Mumble.app'
end
