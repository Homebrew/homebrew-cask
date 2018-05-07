cask 'mumble' do
  version '1.2.19'
  sha256 '3784911cff35d1611c1aad1bdce74dda4d3a7f682cd83e256b1e4283d82bf368'

  # github.com/mumble-voip/mumble was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom',
          checkpoint: '5eac67f1b7255a216e79b745ff7b86f1c29c5628be463c4789c52c775457a6ce'
  name 'Mumble'
  homepage 'https://wiki.mumble.info/wiki/Main_Page'
  gpg "#{url}.sig", key_url: 'https://github.com/mumble-voip/mumble-gpg-signatures/raw/master/mumble-auto-build-2017.asc'

  app 'Mumble.app'
end
