cask 'mumble' do
  version '1.2.15'
  sha256 '0f31b7d8f00779969e339bec89163b573c9c9e9ce10cdbbe0c4acfc11fcb527b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom',
          checkpoint: '336ebf5f243e0ee078da8c5692a2f16c95cc0ec982555efe872731eb77b4aaab'
  name 'Mumble'
  homepage 'http://www.mumble.info'
  license :bsd
  gpg "#{url}.sig",
      key_url: 'http://mumble.info/gpg/mumble-auto-build-2015.asc'

  app 'Mumble.app'
end
