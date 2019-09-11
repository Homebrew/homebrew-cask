cask 'gpodder' do
  version '3.10.9'
  sha256 '82ffe8a68d000716f9621b69f9ca4f623580b927ecde3f97c6a98d07c49c9585'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
