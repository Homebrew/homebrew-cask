cask 'mumble' do
  version '1.2.11'
  sha256 'e7d606013c6e86f0e3d4b6690b21c2af65b19a21b4b737c739ab8a2e63a82ea3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom'
  gpg "#{url}.sig",
      :key_url => 'http://mumble.info/gpg/mumble-auto-build-2015.asc'
  name 'Mumble'
  homepage 'http://www.mumble.info'
  license :bsd

  app 'Mumble.app'
end
