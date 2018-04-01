cask 'mumble' do
  version '1.2.19'
  sha256 '3784911cff35d1611c1aad1bdce74dda4d3a7f682cd83e256b1e4283d82bf368'

  # github.com/mumble-voip/mumble was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom',
          checkpoint: '61bc39455db24130cde0266aa899c76c98848c3b1da56fe523ad76f813e59b4e'
  name 'Mumble'
  homepage 'https://wiki.mumble.info/wiki/Main_Page'
  gpg "#{url}.sig", key_id: '3bd0eca5925319af89c25865b585609c5a2be0c1'

  app 'Mumble.app'
end
