cask 'mumble' do
  version '1.2.19'
  sha256 '3784911cff35d1611c1aad1bdce74dda4d3a7f682cd83e256b1e4283d82bf368'

  # github.com/mumble-voip/mumble was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom'
  name 'Mumble'
  homepage 'https://wiki.mumble.info/wiki/Main_Page'

  app 'Mumble.app'
end
