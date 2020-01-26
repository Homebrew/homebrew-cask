cask 'gpodder' do
  version '3.10.12'
  sha256 '02293655b99727b0c9b1f57995ba5eebc35dd1f995a02688c18c7e39cdb2ad51'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
