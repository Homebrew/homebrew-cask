cask 'gpodder' do
  version '3.10.11'
  sha256 '061ea229663a179a3515c294a70cb4c2128d211cadee7ed3a50c47fa4fa91549'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
