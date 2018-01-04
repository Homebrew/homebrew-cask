cask 'gpodder' do
  version '3.9.6_0'
  sha256 '0709a6e6405c07ee14c548c70a2a57abc34b06c62a5542f47fd22e17851be222'

  # sourceforge.net/gpodder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpodder/gPodder-#{version}.zip"
  appcast 'https://sourceforge.net/projects/gpodder/rss?path=/macosx',
          checkpoint: '31aeb7ab1379e2e01eb2bc809c40334183e1ef5912aa6fb0151d08bd21ec96f9'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
