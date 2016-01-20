cask 'mumble' do
  version '1.2.13'
  sha256 'bf9fbefd3f233014903f13e1279197e24d94cbea9cd088cea4ee5bda3f41f37d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom',
          checkpoint: 'a83b5d227b21e5e7452511e7744ca4a4e34a8cfb2c29630365bdf391a99616f8'
  name 'Mumble'
  homepage 'http://www.mumble.info'
  license :bsd
  gpg "#{url}.sig",
      key_url: 'http://mumble.info/gpg/mumble-auto-build-2015.asc'

  app 'Mumble.app'
end
