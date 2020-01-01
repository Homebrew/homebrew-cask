cask 'buttercup' do
  version '1.18.2'
  sha256 '6128a5e68e1911e6a0ed760ba3ce88d929373e537900247082837d2149c3fb9a'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}.dmg"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
