cask 'mumble' do
  version '1.3.2'
  sha256 '416836d82edeb301389749e717ffba72f22f9546159ccb03fd20b11062e9baf0'

  # github.com/mumble-voip/mumble/ was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom'
  name 'Mumble'
  homepage 'https://wiki.mumble.info/wiki/Main_Page'

  app 'Mumble.app'
end
