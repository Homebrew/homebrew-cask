cask 'gpodder' do
  version '3.10.7'
  sha256 '515608388004b0295f7afc14ed0f4d6884340feeb3455f3a91a4b61a5c9af2f6'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
