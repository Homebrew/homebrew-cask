cask 'mumble' do
  version '1.3.0'
  sha256 'ffe648f07e3749dac1b7e9e82eb15b032e4547b8bfd48d568a618057dea6ee49'

  # github.com/mumble-voip/mumble was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom'
  name 'Mumble'
  homepage 'https://wiki.mumble.info/wiki/Main_Page'

  app 'Mumble.app'
end
