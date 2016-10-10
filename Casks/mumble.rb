cask 'mumble' do
  version '1.2.17'
  sha256 '169039aff011239f2aa5972a3e7c85b72d1f636ca30d349986f4d36cd3cd2077'

  # github.com/mumble-voip/mumble was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom',
          checkpoint: '7c0254c2fb4593a98d8609d2ba2eabcb6f4492428d4aea172e145c26ba184590'
  name 'Mumble'
  homepage 'https://www.mumble.info/'
  gpg "#{url}.sig",
      key_url: 'https://mumble.info/gpg/mumble-auto-build-2015.asc'

  app 'Mumble.app'
end
