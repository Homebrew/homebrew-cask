cask 'buttercup' do
  version '1.18.2'
  sha256 '0e75d28d54edf7b9fcc0e7d8eb616156c32f074c700ef8a62f15337b05e7f971'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}.dmg"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
