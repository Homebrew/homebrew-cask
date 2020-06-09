cask 'mumble' do
  version '1.3.1'
  sha256 '052ba6d5bc1fc64aed90881bcab036bf93ae857228be316243a6eb15dac99ce6'

  # github.com/mumble-voip/mumble/ was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom'
  name 'Mumble'
  homepage 'https://wiki.mumble.info/wiki/Main_Page'

  app 'Mumble.app'
end
