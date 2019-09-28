cask 'gpodder' do
  version '3.10.10'
  sha256 '210655847e4b82f5a5c4f1ecf02d5f32bd6d1f08031a0e7b57c57c4604d5500e'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
