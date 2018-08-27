cask 'gpodder' do
  version '3.10.3'
  sha256 'e8dadea1ec204cf537e09a303cbe5f3b0bbe59acabe949c7de451379f5e5f2a3'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
