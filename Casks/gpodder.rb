cask 'gpodder' do
  version '3.10.1'
  sha256 '895bbb49594630db42f71e687942714fbf5db651d1d4844e75d44e99df2729f2'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom',
          checkpoint: 'c8e78117f11a8677c6b94d95ea1b04f6d40e6cc1232e464d49a55466baa40c58'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
