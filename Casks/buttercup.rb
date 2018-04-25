cask 'buttercup' do
  version '1.6.2'
  sha256 'e73748a31f8eda1fe74aeb38025f5aef314498e10049ffb48152118036f29b9a'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: 'ae5d4f2f2560672309a65359277815f140774e60bf15b6732a6b1aed70c0c84d'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
