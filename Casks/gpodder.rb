cask 'gpodder' do
  version '3.10.5'
  sha256 '55c6b0b31e8ab2b37d3f218dd5b9eaab92e3a0b38aaef995a12d80583bfd7536'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
