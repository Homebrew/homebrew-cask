cask 'mumble' do
  version '1.2.12'
  sha256 '411cae18632a2db9aac7e546520f631dc0346f08f9ec5603b299ec65a27aea0a'

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
