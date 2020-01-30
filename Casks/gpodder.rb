cask 'gpodder' do
  version '3.10.13'
  sha256 '4f71f6bffa11cc800df230519ff2a560f018e5ce1e54fb4a11207eceb31efee0'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
