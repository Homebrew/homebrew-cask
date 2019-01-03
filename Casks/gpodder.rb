cask 'gpodder' do
  version '3.10.6'
  sha256 '27f245a474e93f6ef6f8ca38fafd7801682b2e672c7517591be347bc8919526c'

  # github.com/gpodder/gpodder was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast 'https://github.com/gpodder/gpodder/releases.atom'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
