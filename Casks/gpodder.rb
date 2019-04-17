cask 'gpodder' do
  version '3.10.8'
  sha256 '68487b3693d433b653a043e9c6625721608d1ea6ee785d3f5eb04537ccdbb105'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
