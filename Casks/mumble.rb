cask 'mumble' do
  version '1.2.14'
  sha256 'f944d388ca94c31ef071a2f6b1860388c94cb9f2ac485a88774013521cb8bc9c'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom',
          checkpoint: 'a7c2dfab1a29bdb84587b9c127450a8e4cf4ee015b1d6441aa58e2184992c48b'
  name 'Mumble'
  homepage 'http://www.mumble.info'
  license :bsd
  gpg "#{url}.sig",
      key_url: 'http://mumble.info/gpg/mumble-auto-build-2015.asc'

  app 'Mumble.app'
end
