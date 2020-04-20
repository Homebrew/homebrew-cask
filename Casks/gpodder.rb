cask 'gpodder' do
  version '3.10.15'
  sha256 '6c6ce4925bb3b3f413a1667c92cba625e75fb9babef7bf58b6c6dae619c845f5'

  # github.com/gpodder/gpodder/ was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
